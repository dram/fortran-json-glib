!!! Auto-Generated Fortran API for json-glib-1.0.

module json_glib
  use iso_c_binding, only: c_int

  implicit none

  private c_int

  integer(c_int), parameter :: JSON_NODE_OBJECT = 0
  integer(c_int), parameter :: JSON_NODE_ARRAY = 1
  integer(c_int), parameter :: JSON_NODE_VALUE = 2
  integer(c_int), parameter :: JSON_NODE_NULL = 3
  integer(c_int), parameter :: JSON_PARSER_ERROR_PARSE = 0
  integer(c_int), parameter :: JSON_PARSER_ERROR_TRAILING_COMMA = 1
  integer(c_int), parameter :: JSON_PARSER_ERROR_MISSING_COMMA = 2
  integer(c_int), parameter :: JSON_PARSER_ERROR_MISSING_COLON = 3
  integer(c_int), parameter :: JSON_PARSER_ERROR_INVALID_BAREWORD = 4
  integer(c_int), parameter :: JSON_PARSER_ERROR_EMPTY_MEMBER_NAME = 5
  integer(c_int), parameter :: JSON_PARSER_ERROR_INVALID_DATA = 6
  integer(c_int), parameter :: JSON_PARSER_ERROR_UNKNOWN = 7
  integer(c_int), parameter :: JSON_PATH_ERROR_INVALID_QUERY = 0
  integer(c_int), parameter :: JSON_READER_ERROR_NO_ARRAY = 0
  integer(c_int), parameter :: JSON_READER_ERROR_INVALID_INDEX = 1
  integer(c_int), parameter :: JSON_READER_ERROR_NO_OBJECT = 2
  integer(c_int), parameter :: JSON_READER_ERROR_INVALID_MEMBER = 3
  integer(c_int), parameter :: JSON_READER_ERROR_INVALID_NODE = 4
  integer(c_int), parameter :: JSON_READER_ERROR_NO_VALUE = 5
  integer(c_int), parameter :: JSON_READER_ERROR_INVALID_TYPE = 6

  interface

    function json_array_new() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_array_new
    end function json_array_new

    function json_array_sized_new(n_elements) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      integer(c_int), value :: n_elements
      type(c_ptr) json_array_sized_new
    end function json_array_sized_new

    subroutine json_array_add_array_element( &
        array, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: value
    end subroutine json_array_add_array_element

    subroutine json_array_add_boolean_element( &
        array, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: array
      logical(c_bool), value :: value
    end subroutine json_array_add_boolean_element

    subroutine json_array_add_double_element( &
        array, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: value
    end subroutine json_array_add_double_element

    subroutine json_array_add_element( &
        array, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: node
    end subroutine json_array_add_element

    subroutine json_array_add_int_element( &
        array, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: value
    end subroutine json_array_add_int_element

    subroutine json_array_add_null_element(array) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
    end subroutine json_array_add_null_element

    subroutine json_array_add_object_element( &
        array, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: value
    end subroutine json_array_add_object_element

    subroutine json_array_add_string_element( &
        array, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: value
    end subroutine json_array_add_string_element

    function json_array_dup_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_dup_element
    end function json_array_dup_element

    function json_array_equal( &
        a, &
        b &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: a
      type(c_ptr), value :: b
      logical(c_bool) json_array_equal
    end function json_array_equal

    subroutine json_array_foreach_element( &
        array, &
        func, &
        data &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr), value :: func
      type(c_ptr), value :: data
    end subroutine json_array_foreach_element

    function json_array_get_array_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_get_array_element
    end function json_array_get_array_element

    function json_array_get_boolean_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      logical(c_bool) json_array_get_boolean_element
    end function json_array_get_boolean_element

    function json_array_get_double_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_get_double_element
    end function json_array_get_double_element

    function json_array_get_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_get_element
    end function json_array_get_element

    function json_array_get_elements(array) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr) json_array_get_elements
    end function json_array_get_elements

    function json_array_get_int_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_get_int_element
    end function json_array_get_int_element

    function json_array_get_length(array) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int) json_array_get_length
    end function json_array_get_length

    function json_array_get_null_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      logical(c_bool) json_array_get_null_element
    end function json_array_get_null_element

    function json_array_get_object_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_get_object_element
    end function json_array_get_object_element

    function json_array_get_string_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
      type(c_ptr) json_array_get_string_element
    end function json_array_get_string_element

    function json_array_hash(key) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: key
      integer(c_int) json_array_hash
    end function json_array_hash

    function json_array_is_immutable(array) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: array
      logical(c_bool) json_array_is_immutable
    end function json_array_is_immutable

    function json_array_ref(array) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
      type(c_ptr) json_array_ref
    end function json_array_ref

    subroutine json_array_remove_element( &
        array, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: array
      integer(c_int), value :: index_
    end subroutine json_array_remove_element

    subroutine json_array_seal(array) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
    end subroutine json_array_seal

    subroutine json_array_unref(array) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: array
    end subroutine json_array_unref

    function json_builder_new() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_builder_new
    end function json_builder_new

    function json_builder_new_immutable() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_builder_new_immutable
    end function json_builder_new_immutable

    function json_builder_add_boolean_value( &
        builder, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: builder
      logical(c_bool), value :: value
      type(c_ptr) json_builder_add_boolean_value
    end function json_builder_add_boolean_value

    function json_builder_add_double_value( &
        builder, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr), value :: value
      type(c_ptr) json_builder_add_double_value
    end function json_builder_add_double_value

    function json_builder_add_int_value( &
        builder, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr), value :: value
      type(c_ptr) json_builder_add_int_value
    end function json_builder_add_int_value

    function json_builder_add_null_value(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr) json_builder_add_null_value
    end function json_builder_add_null_value

    function json_builder_add_string_value( &
        builder, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr), value :: value
      type(c_ptr) json_builder_add_string_value
    end function json_builder_add_string_value

    function json_builder_add_value( &
        builder, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr), value :: node
      type(c_ptr) json_builder_add_value
    end function json_builder_add_value

    function json_builder_begin_array(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr) json_builder_begin_array
    end function json_builder_begin_array

    function json_builder_begin_object(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr) json_builder_begin_object
    end function json_builder_begin_object

    function json_builder_end_array(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr) json_builder_end_array
    end function json_builder_end_array

    function json_builder_end_object(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr) json_builder_end_object
    end function json_builder_end_object

    function json_builder_get_root(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr) json_builder_get_root
    end function json_builder_get_root

    subroutine json_builder_reset(builder) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
    end subroutine json_builder_reset

    function json_builder_set_member_name( &
        builder, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: builder
      type(c_ptr), value :: member_name
      type(c_ptr) json_builder_set_member_name
    end function json_builder_set_member_name

    function json_generator_new() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_generator_new
    end function json_generator_new

    function json_generator_get_indent(generator) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: generator
      integer(c_int) json_generator_get_indent
    end function json_generator_get_indent

    function json_generator_get_indent_char(generator) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: generator
      type(c_ptr) json_generator_get_indent_char
    end function json_generator_get_indent_char

    function json_generator_get_pretty(generator) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: generator
      logical(c_bool) json_generator_get_pretty
    end function json_generator_get_pretty

    function json_generator_get_root(generator) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: generator
      type(c_ptr) json_generator_get_root
    end function json_generator_get_root

    subroutine json_generator_set_indent( &
        generator, &
        indent_level &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: generator
      integer(c_int), value :: indent_level
    end subroutine json_generator_set_indent

    subroutine json_generator_set_indent_char( &
        generator, &
        indent_char &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: generator
      type(c_ptr), value :: indent_char
    end subroutine json_generator_set_indent_char

    subroutine json_generator_set_pretty( &
        generator, &
        is_pretty &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: generator
      logical(c_bool), value :: is_pretty
    end subroutine json_generator_set_pretty

    subroutine json_generator_set_root( &
        generator, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: generator
      type(c_ptr), value :: node
    end subroutine json_generator_set_root

    function json_generator_to_data( &
        generator, &
        length &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: generator
      type(c_ptr), value :: length
      type(c_ptr) json_generator_to_data
    end function json_generator_to_data

    function json_generator_to_file( &
        generator, &
        filename, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: generator
      type(c_ptr), value :: filename
      type(c_ptr), value :: error
      logical(c_bool) json_generator_to_file
    end function json_generator_to_file

    function json_generator_to_stream( &
        generator, &
        stream, &
        cancellable, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: generator
      type(c_ptr), value :: stream
      type(c_ptr), value :: cancellable
      type(c_ptr), value :: error
      logical(c_bool) json_generator_to_stream
    end function json_generator_to_stream

    function json_node_alloc() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_node_alloc
    end function json_node_alloc

    function json_node_new(type) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      integer(c_int), value :: type
      type(c_ptr) json_node_new
    end function json_node_new

    function json_node_copy(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_copy
    end function json_node_copy

    function json_node_dup_array(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_dup_array
    end function json_node_dup_array

    function json_node_dup_object(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_dup_object
    end function json_node_dup_object

    function json_node_dup_string(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_dup_string
    end function json_node_dup_string

    function json_node_equal( &
        a, &
        b &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: a
      type(c_ptr), value :: b
      logical(c_bool) json_node_equal
    end function json_node_equal

    subroutine json_node_free(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
    end subroutine json_node_free

    function json_node_get_array(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_array
    end function json_node_get_array

    function json_node_get_boolean(node) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: node
      logical(c_bool) json_node_get_boolean
    end function json_node_get_boolean

    function json_node_get_double(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_double
    end function json_node_get_double

    function json_node_get_int(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_int
    end function json_node_get_int

    function json_node_get_node_type(node) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: node
      integer(c_int) json_node_get_node_type
    end function json_node_get_node_type

    function json_node_get_object(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_object
    end function json_node_get_object

    function json_node_get_parent(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_parent
    end function json_node_get_parent

    function json_node_get_string(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_string
    end function json_node_get_string

    subroutine json_node_get_value( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
    end subroutine json_node_get_value

    function json_node_get_value_type(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_get_value_type
    end function json_node_get_value_type

    function json_node_hash(key) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: key
      integer(c_int) json_node_hash
    end function json_node_hash

    function json_node_init( &
        node, &
        type &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: node
      integer(c_int), value :: type
      type(c_ptr) json_node_init
    end function json_node_init

    function json_node_init_array( &
        node, &
        array &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: array
      type(c_ptr) json_node_init_array
    end function json_node_init_array

    function json_node_init_boolean( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: node
      logical(c_bool), value :: value
      type(c_ptr) json_node_init_boolean
    end function json_node_init_boolean

    function json_node_init_double( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
      type(c_ptr) json_node_init_double
    end function json_node_init_double

    function json_node_init_int( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
      type(c_ptr) json_node_init_int
    end function json_node_init_int

    function json_node_init_null(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_init_null
    end function json_node_init_null

    function json_node_init_object( &
        node, &
        object &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: object
      type(c_ptr) json_node_init_object
    end function json_node_init_object

    function json_node_init_string( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
      type(c_ptr) json_node_init_string
    end function json_node_init_string

    function json_node_is_immutable(node) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: node
      logical(c_bool) json_node_is_immutable
    end function json_node_is_immutable

    function json_node_is_null(node) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: node
      logical(c_bool) json_node_is_null
    end function json_node_is_null

    function json_node_ref(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_ref
    end function json_node_ref

    subroutine json_node_seal(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
    end subroutine json_node_seal

    subroutine json_node_set_array( &
        node, &
        array &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: array
    end subroutine json_node_set_array

    subroutine json_node_set_boolean( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: node
      logical(c_bool), value :: value
    end subroutine json_node_set_boolean

    subroutine json_node_set_double( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
    end subroutine json_node_set_double

    subroutine json_node_set_int( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
    end subroutine json_node_set_int

    subroutine json_node_set_object( &
        node, &
        object &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: object
    end subroutine json_node_set_object

    subroutine json_node_set_parent( &
        node, &
        parent &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: parent
    end subroutine json_node_set_parent

    subroutine json_node_set_string( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
    end subroutine json_node_set_string

    subroutine json_node_set_value( &
        node, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: value
    end subroutine json_node_set_value

    subroutine json_node_take_array( &
        node, &
        array &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: array
    end subroutine json_node_take_array

    subroutine json_node_take_object( &
        node, &
        object &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr), value :: object
    end subroutine json_node_take_object

    function json_node_type_name(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_node_type_name
    end function json_node_type_name

    subroutine json_node_unref(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
    end subroutine json_node_unref

    function json_object_new() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_object_new
    end function json_object_new

    subroutine json_object_add_member( &
        object, &
        member_name, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: node
    end subroutine json_object_add_member

    function json_object_dup_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_dup_member
    end function json_object_dup_member

    function json_object_equal( &
        a, &
        b &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: a
      type(c_ptr), value :: b
      logical(c_bool) json_object_equal
    end function json_object_equal

    subroutine json_object_foreach_member( &
        object, &
        func, &
        data &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: func
      type(c_ptr), value :: data
    end subroutine json_object_foreach_member

    function json_object_get_array_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_get_array_member
    end function json_object_get_array_member

    function json_object_get_boolean_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      logical(c_bool) json_object_get_boolean_member
    end function json_object_get_boolean_member

    function json_object_get_double_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_get_double_member
    end function json_object_get_double_member

    function json_object_get_int_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_get_int_member
    end function json_object_get_int_member

    function json_object_get_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_get_member
    end function json_object_get_member

    function json_object_get_members(object) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr) json_object_get_members
    end function json_object_get_members

    function json_object_get_null_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      logical(c_bool) json_object_get_null_member
    end function json_object_get_null_member

    function json_object_get_object_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_get_object_member
    end function json_object_get_object_member

    function json_object_get_size(object) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: object
      integer(c_int) json_object_get_size
    end function json_object_get_size

    function json_object_get_string_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr) json_object_get_string_member
    end function json_object_get_string_member

    function json_object_get_values(object) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr) json_object_get_values
    end function json_object_get_values

    function json_object_has_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      logical(c_bool) json_object_has_member
    end function json_object_has_member

    function json_object_hash(key) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: key
      integer(c_int) json_object_hash
    end function json_object_hash

    function json_object_is_immutable(object) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: object
      logical(c_bool) json_object_is_immutable
    end function json_object_is_immutable

    function json_object_ref(object) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr) json_object_ref
    end function json_object_ref

    subroutine json_object_remove_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
    end subroutine json_object_remove_member

    subroutine json_object_seal(object) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
    end subroutine json_object_seal

    subroutine json_object_set_array_member( &
        object, &
        member_name, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: value
    end subroutine json_object_set_array_member

    subroutine json_object_set_boolean_member( &
        object, &
        member_name, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      logical(c_bool), value :: value
    end subroutine json_object_set_boolean_member

    subroutine json_object_set_double_member( &
        object, &
        member_name, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: value
    end subroutine json_object_set_double_member

    subroutine json_object_set_int_member( &
        object, &
        member_name, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: value
    end subroutine json_object_set_int_member

    subroutine json_object_set_member( &
        object, &
        member_name, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: node
    end subroutine json_object_set_member

    subroutine json_object_set_null_member( &
        object, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
    end subroutine json_object_set_null_member

    subroutine json_object_set_object_member( &
        object, &
        member_name, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: value
    end subroutine json_object_set_object_member

    subroutine json_object_set_string_member( &
        object, &
        member_name, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
      type(c_ptr), value :: member_name
      type(c_ptr), value :: value
    end subroutine json_object_set_string_member

    subroutine json_object_unref(object) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: object
    end subroutine json_object_unref

    subroutine json_object_iter_init( &
        iter, &
        object &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: iter
      type(c_ptr), value :: object
    end subroutine json_object_iter_init

    function json_object_iter_next( &
        iter, &
        member_name, &
        member_node &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: iter
      type(c_ptr), value :: member_name
      type(c_ptr), value :: member_node
      logical(c_bool) json_object_iter_next
    end function json_object_iter_next

    function json_parser_new() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_parser_new
    end function json_parser_new

    function json_parser_new_immutable() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_parser_new_immutable
    end function json_parser_new_immutable

    function json_parser_get_current_line(parser) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: parser
      integer(c_int) json_parser_get_current_line
    end function json_parser_get_current_line

    function json_parser_get_current_pos(parser) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: parser
      integer(c_int) json_parser_get_current_pos
    end function json_parser_get_current_pos

    function json_parser_get_root(parser) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: parser
      type(c_ptr) json_parser_get_root
    end function json_parser_get_root

    function json_parser_has_assignment( &
        parser, &
        variable_name &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: parser
      type(c_ptr), value :: variable_name
      logical(c_bool) json_parser_has_assignment
    end function json_parser_has_assignment

    function json_parser_load_from_data( &
        parser, &
        data, &
        length, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_long, c_ptr
      type(c_ptr), value :: parser
      type(c_ptr), value :: data
      integer(c_long), value :: length
      type(c_ptr), value :: error
      logical(c_bool) json_parser_load_from_data
    end function json_parser_load_from_data

    function json_parser_load_from_file( &
        parser, &
        filename, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: parser
      type(c_ptr), value :: filename
      type(c_ptr), value :: error
      logical(c_bool) json_parser_load_from_file
    end function json_parser_load_from_file

    function json_parser_load_from_stream( &
        parser, &
        stream, &
        cancellable, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: parser
      type(c_ptr), value :: stream
      type(c_ptr), value :: cancellable
      type(c_ptr), value :: error
      logical(c_bool) json_parser_load_from_stream
    end function json_parser_load_from_stream

    subroutine json_parser_load_from_stream_async( &
        parser, &
        stream, &
        cancellable, &
        callback, &
        user_data &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: parser
      type(c_ptr), value :: stream
      type(c_ptr), value :: cancellable
      type(c_ptr), value :: callback
      type(c_ptr), value :: user_data
    end subroutine json_parser_load_from_stream_async

    function json_parser_load_from_stream_finish( &
        parser, &
        result, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: parser
      type(c_ptr), value :: result
      type(c_ptr), value :: error
      logical(c_bool) json_parser_load_from_stream_finish
    end function json_parser_load_from_stream_finish

    function json_parser_error_quark() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_parser_error_quark
    end function json_parser_error_quark

    function json_path_new() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_path_new
    end function json_path_new

    function json_path_query( &
        expression, &
        root, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: expression
      type(c_ptr), value :: root
      type(c_ptr), value :: error
      type(c_ptr) json_path_query
    end function json_path_query

    function json_path_compile( &
        path, &
        expression, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: path
      type(c_ptr), value :: expression
      type(c_ptr), value :: error
      logical(c_bool) json_path_compile
    end function json_path_compile

    function json_path_match( &
        path, &
        root &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: path
      type(c_ptr), value :: root
      type(c_ptr) json_path_match
    end function json_path_match

    function json_path_error_quark() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_path_error_quark
    end function json_path_error_quark

    function json_reader_new(node) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: node
      type(c_ptr) json_reader_new
    end function json_reader_new

    function json_reader_count_elements(reader) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: reader
      integer(c_int) json_reader_count_elements
    end function json_reader_count_elements

    function json_reader_count_members(reader) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: reader
      integer(c_int) json_reader_count_members
    end function json_reader_count_members

    subroutine json_reader_end_element(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
    end subroutine json_reader_end_element

    subroutine json_reader_end_member(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
    end subroutine json_reader_end_member

    function json_reader_get_boolean_value(reader) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: reader
      logical(c_bool) json_reader_get_boolean_value
    end function json_reader_get_boolean_value

    function json_reader_get_double_value(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_get_double_value
    end function json_reader_get_double_value

    function json_reader_get_error(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_get_error
    end function json_reader_get_error

    function json_reader_get_int_value(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_get_int_value
    end function json_reader_get_int_value

    function json_reader_get_member_name(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_get_member_name
    end function json_reader_get_member_name

    function json_reader_get_null_value(reader) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: reader
      logical(c_bool) json_reader_get_null_value
    end function json_reader_get_null_value

    function json_reader_get_string_value(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_get_string_value
    end function json_reader_get_string_value

    function json_reader_get_value(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_get_value
    end function json_reader_get_value

    function json_reader_is_array(reader) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: reader
      logical(c_bool) json_reader_is_array
    end function json_reader_is_array

    function json_reader_is_object(reader) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: reader
      logical(c_bool) json_reader_is_object
    end function json_reader_is_object

    function json_reader_is_value(reader) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: reader
      logical(c_bool) json_reader_is_value
    end function json_reader_is_value

    function json_reader_list_members(reader) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr) json_reader_list_members
    end function json_reader_list_members

    function json_reader_read_element( &
        reader, &
        index_ &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_int, c_ptr
      type(c_ptr), value :: reader
      integer(c_int), value :: index_
      logical(c_bool) json_reader_read_element
    end function json_reader_read_element

    function json_reader_read_member( &
        reader, &
        member_name &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: reader
      type(c_ptr), value :: member_name
      logical(c_bool) json_reader_read_member
    end function json_reader_read_member

    subroutine json_reader_set_root( &
        reader, &
        root &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: reader
      type(c_ptr), value :: root
    end subroutine json_reader_set_root

    function json_reader_error_quark() bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr) json_reader_error_quark
    end function json_reader_error_quark

    function json_serializable_default_deserialize_property( &
        serializable, &
        property_name, &
        value, &
        pspec, &
        property_node &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: property_name
      type(c_ptr), value :: value
      type(c_ptr), value :: pspec
      type(c_ptr), value :: property_node
      logical(c_bool) json_serializable_default_deserialize_property
    end function json_serializable_default_deserialize_property

    function json_serializable_default_serialize_property( &
        serializable, &
        property_name, &
        value, &
        pspec &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: property_name
      type(c_ptr), value :: value
      type(c_ptr), value :: pspec
      type(c_ptr) json_serializable_default_serialize_property
    end function json_serializable_default_serialize_property

    function json_serializable_deserialize_property( &
        serializable, &
        property_name, &
        value, &
        pspec, &
        property_node &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: property_name
      type(c_ptr), value :: value
      type(c_ptr), value :: pspec
      type(c_ptr), value :: property_node
      logical(c_bool) json_serializable_deserialize_property
    end function json_serializable_deserialize_property

    function json_serializable_find_property( &
        serializable, &
        name &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: name
      type(c_ptr) json_serializable_find_property
    end function json_serializable_find_property

    subroutine json_serializable_get_property( &
        serializable, &
        pspec, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: pspec
      type(c_ptr), value :: value
    end subroutine json_serializable_get_property

    function json_serializable_list_properties( &
        serializable, &
        n_pspecs &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: n_pspecs
      type(c_ptr) json_serializable_list_properties
    end function json_serializable_list_properties

    function json_serializable_serialize_property( &
        serializable, &
        property_name, &
        value, &
        pspec &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: property_name
      type(c_ptr), value :: value
      type(c_ptr), value :: pspec
      type(c_ptr) json_serializable_serialize_property
    end function json_serializable_serialize_property

    subroutine json_serializable_set_property( &
        serializable, &
        pspec, &
        value &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: serializable
      type(c_ptr), value :: pspec
      type(c_ptr), value :: value
    end subroutine json_serializable_set_property

    function json_boxed_can_deserialize( &
        gboxed_type, &
        node_type &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_int, c_ptr
      type(c_ptr), value :: gboxed_type
      integer(c_int), value :: node_type
      logical(c_bool) json_boxed_can_deserialize
    end function json_boxed_can_deserialize

    function json_boxed_can_serialize( &
        gboxed_type, &
        node_type &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: gboxed_type
      type(c_ptr), value :: node_type
      logical(c_bool) json_boxed_can_serialize
    end function json_boxed_can_serialize

    function json_boxed_deserialize( &
        gboxed_type, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: gboxed_type
      type(c_ptr), value :: node
      type(c_ptr) json_boxed_deserialize
    end function json_boxed_deserialize

    subroutine json_boxed_register_deserialize_func( &
        gboxed_type, &
        node_type, &
        deserialize_func &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: gboxed_type
      integer(c_int), value :: node_type
      type(c_ptr), value :: deserialize_func
    end subroutine json_boxed_register_deserialize_func

    subroutine json_boxed_register_serialize_func( &
        gboxed_type, &
        node_type, &
        serialize_func &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: gboxed_type
      integer(c_int), value :: node_type
      type(c_ptr), value :: serialize_func
    end subroutine json_boxed_register_serialize_func

    function json_boxed_serialize( &
        gboxed_type, &
        boxed &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: gboxed_type
      type(c_ptr), value :: boxed
      type(c_ptr) json_boxed_serialize
    end function json_boxed_serialize

    function json_construct_gobject( &
        gtype, &
        data, &
        length, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_long, c_ptr
      type(c_ptr), value :: gtype
      type(c_ptr), value :: data
      integer(c_long), value :: length
      type(c_ptr), value :: error
      type(c_ptr) json_construct_gobject
    end function json_construct_gobject

    function json_from_string( &
        str, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: str
      type(c_ptr), value :: error
      type(c_ptr) json_from_string
    end function json_from_string

    function json_gobject_deserialize( &
        gtype, &
        node &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: gtype
      type(c_ptr), value :: node
      type(c_ptr) json_gobject_deserialize
    end function json_gobject_deserialize

    function json_gobject_from_data( &
        gtype, &
        data, &
        length, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_long, c_ptr
      type(c_ptr), value :: gtype
      type(c_ptr), value :: data
      integer(c_long), value :: length
      type(c_ptr), value :: error
      type(c_ptr) json_gobject_from_data
    end function json_gobject_from_data

    function json_gobject_serialize(gobject) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: gobject
      type(c_ptr) json_gobject_serialize
    end function json_gobject_serialize

    function json_gobject_to_data( &
        gobject, &
        length &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: gobject
      type(c_ptr), value :: length
      type(c_ptr) json_gobject_to_data
    end function json_gobject_to_data

    function json_gvariant_deserialize( &
        json_node, &
        signature, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: json_node
      type(c_ptr), value :: signature
      type(c_ptr), value :: error
      type(c_ptr) json_gvariant_deserialize
    end function json_gvariant_deserialize

    function json_gvariant_deserialize_data( &
        json, &
        length, &
        signature, &
        error &
    ) bind(c)
      use iso_c_binding, only: c_long, c_ptr
      type(c_ptr), value :: json
      integer(c_long), value :: length
      type(c_ptr), value :: signature
      type(c_ptr), value :: error
      type(c_ptr) json_gvariant_deserialize_data
    end function json_gvariant_deserialize_data

    function json_gvariant_serialize(variant) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: variant
      type(c_ptr) json_gvariant_serialize
    end function json_gvariant_serialize

    function json_gvariant_serialize_data( &
        variant, &
        length &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: variant
      type(c_ptr), value :: length
      type(c_ptr) json_gvariant_serialize_data
    end function json_gvariant_serialize_data

    function json_serialize_gobject( &
        gobject, &
        length &
    ) bind(c)
      use iso_c_binding, only: c_ptr
      type(c_ptr), value :: gobject
      type(c_ptr), value :: length
      type(c_ptr) json_serialize_gobject
    end function json_serialize_gobject

    function json_string_compare( &
        a, &
        b &
    ) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: a
      type(c_ptr), value :: b
      integer(c_int) json_string_compare
    end function json_string_compare

    function json_string_equal( &
        a, &
        b &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: a
      type(c_ptr), value :: b
      logical(c_bool) json_string_equal
    end function json_string_equal

    function json_string_hash(key) bind(c)
      use iso_c_binding, only: c_int, c_ptr
      type(c_ptr), value :: key
      integer(c_int) json_string_hash
    end function json_string_hash

    function json_to_string( &
        node, &
        pretty &
    ) bind(c)
      use iso_c_binding, only: c_bool, c_ptr
      type(c_ptr), value :: node
      logical(c_bool), value :: pretty
      type(c_ptr) json_to_string
    end function json_to_string

  end interface
end module json_glib
