program main
  use cstrings
  use iso_c_binding
  use json_glib

  implicit none

  block
    character(:), allocatable :: data
    logical(c_bool) rc
    type(c_ptr) cptr, parser, reader, root
    character(3), pointer :: fptr

    target data

    call cstring_initialize

    parser = json_parser_new()

    data = '{"foo": "bar"}'

    rc = json_parser_load_from_data( &
         parser, c_loc(data), int(len(data), c_long), c_null_ptr)
    print *, rc

    root = json_parser_get_root(parser)

    reader = json_reader_new(root)
    print *, json_reader_is_object(reader)

    rc = json_reader_read_member(reader, cstring('foo'))
    print *, rc

    cptr = json_reader_get_string_value(reader)
    call c_f_pointer(cptr, fptr)
    print *, fptr

    call json_reader_end_member(reader)

    call cstring_finalize
  end block

end program main
