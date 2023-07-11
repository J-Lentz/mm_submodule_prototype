interface
  module subroutine HELLO_WORLD_ (r)
    real(KIND_), intent(in) :: r
  end subroutine

  module function STRING_ (r) result (res)
    real(KIND_), intent(in) :: r
    character(:), allocatable :: res
  end function
end interface
