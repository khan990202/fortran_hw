program overflow_factorial
    implicit none

    integer(kind=4):: fact4, previous_fact4
    integer(kind=8):: fact8, previous_fact8
    integer :: n

    !initializing to avoid error
    fact4 = 1
    fact8 = 1
    previous_fact4 = 1
    previous_fact8 = 1


    print*, "n                   fact4"

    do n =1,50
        if(n>1) then
            previous_fact4 = fact4
            fact4 = fact4*n
            print*, n,fact4
            if(fact4 < previous_fact4) then
                print*, "Oveflow Fact4 at n =", n
                exit
            end if
        end if
    end do

    print*, "n                   fact8"


    do n=1,50
        if(n>1) then
            previous_fact8 = fact8
            fact8 = fact8*n
            print*, n,fact8
            if(fact8<previous_fact8) then
                print*, "Overflow Fact8 at n=", n
                exit
            end if
        end if
    end do
end program overflow_factorial
