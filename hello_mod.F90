module hello_mod
  implicit none

  interface hello_world
    module procedure hello_world_r4, hello_world_r8
  end interface

  interface string
    module procedure string_r4, string_r8
  end interface

#include "hello_r4.fh"
#include "hello_interface.inc"
#include "hello_clean.fh"

#include "hello_r8.fh"
#include "hello_interface.inc"
#include "hello_clean.fh"

end module
