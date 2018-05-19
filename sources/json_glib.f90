module json_glib
  use iso_c_binding, only: c_int

  implicit none

  private c_int

  include "constants.f90"

  interface
     function json_parser_get_root(parser) bind(c)
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: parser
       type(c_ptr) json_parser_get_root
     end function json_parser_get_root

     function json_parser_load_from_data(parser, data, length, error) bind(c)
       use iso_c_binding, only: c_bool, c_long, c_ptr
       type(c_ptr), value :: parser, data, error
       integer(c_long), value :: length
       logical(c_bool) json_parser_load_from_data
     end function json_parser_load_from_data

     function json_parser_load_from_stream( &
          parser, stream, cancellable, error) bind(c)
       use iso_c_binding, only: c_bool, c_ptr
       type(c_ptr), value :: parser, stream, cancellable, error
       logical(c_bool) json_parser_load_from_stream
     end function json_parser_load_from_stream

     function json_parser_new() bind(c)
       use iso_c_binding, only: c_ptr
       type(c_ptr) json_parser_new
     end function json_parser_new

     function json_reader_count_elements(reader) bind(c)
       use iso_c_binding, only: c_int, c_ptr
       type(c_ptr), value :: reader
       integer(c_int) json_reader_count_elements
     end function json_reader_count_elements

     function json_reader_get_string_value(reader) bind(c)
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: reader
       type(c_ptr) json_reader_get_string_value
     end function json_reader_get_string_value

     function json_reader_is_object(reader) bind(c)
       use iso_c_binding, only: c_bool, c_ptr
       type(c_ptr), value :: reader
       logical(c_bool) json_reader_is_object
     end function json_reader_is_object

     function json_reader_new(node) bind(c)
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: node
       type(c_ptr) json_reader_new
     end function json_reader_new

     function json_reader_read_element(reader, index) bind(c)
       use iso_c_binding, only: c_bool, c_int, c_ptr
       type(c_ptr), value :: reader
       integer(c_int), value :: index
       logical(c_bool) json_reader_read_element
     end function json_reader_read_element

     function json_reader_read_member(reader, member_name) bind(c)
       use iso_c_binding, only: c_bool, c_ptr
       type(c_ptr), value :: reader, member_name
       logical(c_bool) json_reader_read_member
     end function json_reader_read_member

     subroutine json_reader_end_element(reader) bind(c)
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: reader
     end subroutine json_reader_end_element

     subroutine json_reader_end_member(reader) bind(c)
       use iso_c_binding, only: c_ptr
       type(c_ptr), value :: reader
     end subroutine json_reader_end_member
  end interface
end module json_glib
