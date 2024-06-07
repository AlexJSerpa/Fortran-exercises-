program  EDO
    implicit none
    real::x0,tol,x1
    integer::n,p
    n=1
    print*,'digire el valor inicila X0'
    read*,x0
    print*,'escriba la tolerancia'
    read(*,*)tol
    print*,'escribe el número maximo de iteraciones'
    read(*,*)p
    do while (n<=p)
    x1=x0-(f(x0)/df(x0))
      if (abs(f(x1))<=tol)then
       print*,'el timepo de contamienacion es ',x1
       stop
      end if
      x0=x1
      n=n+1
    end do
    print*,'nada '

    contains
    real function f(x)
    real::x
    f=75*EXP(-1.5*x)+20*EXP(-0.075*x)-15
    end function
    real function  df(x)
        real::x
        df=75*(-1.5)*EXP(-1.5*x) + 20*(-0.075)*EXP(-0.075*x)
    end function
end program  EDO
