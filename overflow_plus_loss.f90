program overflow loss
    implicit none

    integer(kind=8) :: f8
    real(kind=8) :: small, big, add
    integer :: i


    !initialize variables
    f8 = 1
    small = 1.0d0
    big = 1.0d0
    add = 1.0d0s
    i = 1

    do i=1,1000
