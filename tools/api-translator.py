#!/usr/bin/env python3

import collections
import sys
import xml.etree.ElementTree

Enumeration = collections.namedtuple(
    'Enumeration', ['name', 'value'])

Procedure = collections.namedtuple(
    'Procedure', ['name', 'parameters', 'return_type'])

NS = {
    'c': 'http://www.gtk.org/introspection/c/1.0',
    'core': 'http://www.gtk.org/introspection/core/1.0'
}

if __name__ == '__main__':
    module_name = sys.argv[1]
    tree = xml.etree.ElementTree.parse(sys.argv[2])

    types = {
        'gboolean': ('logical(c_bool)', 'c_bool'),
        'gint': ('integer(c_int)', 'c_int'),
        'gsize': ('integer(c_long)', 'c_long'),
        'gssize': ('integer(c_long)', 'c_long'),
        'guint': ('integer(c_int)', 'c_int'),
        'guint16': ('integer(c_int16_t)', 'c_int16_t'),
        'guint32': ('integer(c_int32_t)', 'c_int32_t')
    }

    def translate_type(element):
        ptr = ('type(c_ptr)', 'c_ptr')

        if element.find('core:array', NS) is not None:
            return ptr

        # TODO: Incorrect
        if element.find('core:varargs', NS) is not None:
            return ptr

        type = element.find('core:type', NS).get('{%s}type' % NS['c'])
        if type == 'void':
            return None
        else:
            return types.get(type, ptr)

    for element in tree.findall('.//*[@c:type]', NS):
        tag = element.tag
        name = element.get('{%s}type' % NS['c'])

        if tag.endswith('}bitfield') or tag.endswith('}enumeration'):
            types[name] = ('integer(c_int)', 'c_int')
        elif tag.endswith('}alias'):
            types[name] = translate_type(element)

    enumerations = []
    procedures = []

    for element in tree.findall('.//*[@c:identifier]', NS):
        tag = element.tag
        name = element.get('{%s}identifier' % NS['c'])

        if tag.endswith('}member'):
            enumerations.append(Enumeration(name, element.get('value')))
        elif (tag.endswith('}constructor')
              or tag.endswith('}function')
              or tag.endswith('}method')):
            return_type = translate_type(element.find('core:return-value', NS))

            parameters = [
                ('varargs'
                 if param.get('name') == '...' else param.get('name'),
                 translate_type(param))
                for param in element.findall('core:parameters/*', NS)]

            if element.get('throws') == '1':
                parameters.append(('error', ('type(c_ptr)', 'c_ptr')))

            # FIXME: Dirty patch for `g_object_get`
            if name == 'g_object_get':
                parameters.insert(
                    -1, ('first_property_value', ('type(c_ptr)', 'c_ptr')))

            if not any(name == p.name for p in procedures):
                procedures.append(Procedure(name, parameters, return_type))

    print('!!! Auto-Generated Fortran API for {}.'.format(
        tree.find('core:package', NS).get('name')))

    print('''
module {}
  use iso_c_binding, only: c_int

  implicit none

  private c_int
'''.format(module_name))

    for enum in enumerations:
        # FIXME
        if int(enum.value) >= 2 ** 31:
            print('Warning: Value is too large, omitted: {} = {}'.format(
                enum.name, enum.value), file=sys.stderr)
            continue

        # FIXME
        if len(enum.name) >= 63:
            print('Warning: Name is too long, omitted: {} = {}'.format(
                enum.name, enum.value), file=sys.stderr)
            continue

        print('  integer(c_int), parameter :: {} = {}'.format(
            enum.name, enum.value))

    print('''
  interface
''')

    for proc in procedures:
        if len(proc.parameters) < 2:
            params = ', '.join(p[0] for p in proc.parameters)
        else:
            params = (' &\n        '
                      + ', &\n        '.join(p[0] for p in proc.parameters)
                      + ' &\n    ')

        print('    {} {}({}) bind(c)'.format(
            'function' if proc.return_type else 'subroutine',
            proc.name, params))

        imports = set([p[1][1] for p in proc.parameters])
        if proc.return_type:
            imports.add(proc.return_type[1])

        print('      use iso_c_binding, only: ' + ', '.join(sorted(imports)))

        for param in proc.parameters:
            print('      {}, value :: {}'.format(param[1][0], param[0]))

        if proc.return_type:
            print('      {} {}'.format(proc.return_type[0], proc.name))

        print('    end {} {}'.format(
            'function' if proc.return_type else 'subroutine', proc.name))

        print()

    print('''  end interface
end module {}'''.format(module_name))
