PROGRAM Lagrange_xd
IMPLICIT NONE
    real*8,allocatable:: xd(:),fd(:)
    real*8:: x,p
    INTEGER:: i,j,N


    OPEN(unit=10,STATUS='unknown',FILE='corre.txt',ACTION='READWRITE')
    OPEN(unit=20,STATUS='unknown',FILE='salida.txt',ACTION='READWRITE')

    READ(10,*) N
    ALLOCATE(xd(N))
    ALLOCATE(fd(N))
    DO i=1,N
        READ(10,*) xd(i),fd(i)
    END DO

    PRINT*,'ingrese el valor de aproximacion'
    read*,x
    DO i=1,4

    CALL Lagrange(N,xd,fd,x,p)

    END DO
    WRITE(20,*)x,p

    DEALLOCATE(fd)
    DEALLOCATE(xd)

    print*,'******************************************************'
    print*,'EL RPOGRAMA CORRIO CORRECTAMENTE '
    print*,'*******************************************************'
    print *,'arrojo esto',p



    STOP
     pause







END PROGRAM Lagrange_xd
