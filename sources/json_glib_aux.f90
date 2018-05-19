module json_glib_aux
  use json_glib
  use iso_c_binding

  implicit none

  private

  interface
     pure function strlen(s) bind(c)
       use iso_c_binding, only: c_size_t, c_ptr
       type(c_ptr), value :: s
       integer(c_size_t) strlen
     end function strlen
  end interface

contains

end module json_glib_aux
