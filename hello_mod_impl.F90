! INCLUDE_ is defined in the Makefile and passed as a compiler flag
#include INCLUDE_

submodule (hello_mod) HELLO_MOD_IMPL_
  integer, parameter :: lkind = KIND_
  real(KIND_), parameter :: p = 0.5_lkind

  contains

  module procedure HELLO_WORLD_
    real(KIND_) :: r2

    print "(A,I0)", "lkind = ", lkind
    print "(A)", "r = " // string(r)
    print "(A)", "p = " // string(p)

    r2 = r**p
    print "(A)", "r**p = " // string(r2)

    print "(A)", ""
  end

  module procedure STRING_
    allocate(character(len=40) :: res)
    write (res, *) r
    res = trim(adjustl(res))
  end
end submodule
