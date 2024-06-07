program suma
    real::A(3,3),B(3,3),C(3,3)
    !matrix A
    print*,'introduzca los valores de su matrix en fila '
    do i=1,2
    read(*,*)A(i,:)
    end do
    do i=1,3
    write(*,*)A(i,:)
    end do
    !matrix B
     print*,'introdusca los valores de su matrix en fila '
    do i=1,3
        read*,B(i,:)
    end do
    do i=1,3
        write(*,*)B(i,:)
    end do
    !operaciones
    do i=1,3
    C(i,:)=A(i,:)+B(i,:)
    end do

    print*,'la suma de la matrix A+B'
    do i=1,3


        write(*,*)C(i,:)
        end do

end program  suma
