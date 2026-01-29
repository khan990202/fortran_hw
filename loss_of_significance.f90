program significance
    implicit none


    real(kind=8) :: small,big, summ
    integer :: i,d

    big = 1.0d0
    small = 1.0d0
    print*, "for real(kind=8)"
    print *, "small        ", "big          ", "sum         "
    print *, "-----------------------------------------"

    do i=1,1000
        summ = big+small
        print*, small, big, summ
        if(summ<= big) then
            print *, 'Addition has no effect', i
            exit
        end if
        small = small/2.0d0
    end do
end program significance

