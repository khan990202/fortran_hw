program combined_single_precision
    implicit none

    integer(kind=4) :: fact, previous_fact
    integer :: n
    real(kind=4) :: small, big, summ

    fact = 1
    previous_fact = 1
    big = 1.0
    small = 1.0


    print*, "integer overflow"
    print*, "n                  factorial(kind=4)"

    do n = 1, 50
        if (n > 1) then
            previous_fact = fact
            fact = fact * n
            print*, n, fact
            if (fact < previous_fact) then
                print*, "overflow at n =", n
                exit
            end if
        end if
    end do


    print*, ""
    print*, "loss of signicance (kind =4)"
    print*, " small               big               sum"

    do n = 1, 1000
        summ = big + small
        print*, small, big, summ
        if (summ <= big) then
            print*, "Addition has no effect", n
            exit
        end if
        small = small / 2.0
    end do

end program combined_single_precision
