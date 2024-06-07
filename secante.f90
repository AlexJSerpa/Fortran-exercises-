subroutine sacante1(x1)
    implicit none
    real::x0,x1,x2,TOL
    INTEGER::ITER,N
    N=1

    PRINT*,'ESCRIBA  EL VALOR INICIAL'
    READ*,x0
    PRINT*,'ESCRIBA  EL SEGUNDO VALOR '
    READ*,x1
    PRINT*,'INTRODUSCA LA TOLERANCIA'
    READ*,TOL
    call erro (TOL)
    PRINT*,'INTRODUSCA EL NUMERO DE ITERACIONES '
    READ*,ITER
    DO WHILE(N<=iter)
    x2=x1-(F(X1))*(x1-x0)/(F(x1)-F(x0))


    IF (ABS(F(X2))<TOL)THEN
       write(*,*),'TU resultado es:'
       print 25, X2
        25 FORMAT('',F10.5)
    STOP
    END IF
    x0=x1
    x1=x2
    n=n+1
    END DO
    CONTAINS
    REAL FUNCTION F(h)
    REAL::PI,H,V,R
    PI=4*ATAN(1.)
    V=35.
    R=9.
    F=PI*(H**2)*(R-H)/(3-V)
    END FUNCTION
subroutine sacante1
