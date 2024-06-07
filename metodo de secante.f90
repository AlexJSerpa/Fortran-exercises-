program sacante
    implicit none
    real::x0,x1,x2,TOL,A,B
    INTEGER::ITER,N

    PRINT*,'ESCRIBA  EL INTERVALO'
    READ*,A,B
    PRINT*,'INTRODUSCA LA TOLERANCIA'
    READ*,TOL
    PRINT*,'INTRODUSCA EL NUMERO DE ITERACIONES '
    READ*,ITER
    DO WHILE(N<=iter)
    x1=x0-(f(x1))*(x1-x0)/(f(x1)-f(x0))


    IF (ABS(F(X2))<TOL)THEN
        PRINT*,'TU RESULTADO ES :'
        PRINT 25,X2
        25 FORMAT('',F10.5)
    STOP
    END IF
    x0=x1
    x1=x2
    n=n+1
    END DO
    CONTAINS
    REAL FUNCTION F(H)
    REAL::PI,H,V,R
    PI=4*ATAN(1.)
    V=35
    R=3
    F=PI*H**2*(R-H)/(3-V)
    END FUNCTION
end program sacante
