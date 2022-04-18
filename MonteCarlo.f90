! Created by  on 4/11/22.

program MonteCarlo
    use, intrinsic :: iso_fortran_env, only : fl => real64
    implicit none
    integer :: i
    integer :: n
    integer :: seed
    real(fl) :: store

    n = 10
    seed = 1

    call srand(seed)

    do i = 0, n
        store = store + rand()
    end do

    print *, store / n
end program MonteCarlo