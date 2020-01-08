! $ gfortran -o my_func.so -shared func.f95
! $ gfortran func_test.f95 my_func.so
! ./a.out 
!          42

program test
    integer :: my_func    
    print *, my_func()
end program test
