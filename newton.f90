program newton
    implicit none
    real::x,x2,tol
    integer::iter ,n
    n=1

    print*,'escriba el valor inicial'
    read*,x
    print*,'esciba el numero de iteraciones , se recomienda menores que de 25'
    read*,iter
    print*,'escriba la toleracia '
    read*,tol
do while (n<iter)
x2=x-(f(x)/df(x))
if(f(x2)<tol)then
print*,'****************************************'
print*,' el resultado  es:'
print 25,x2
 25 FORMAT('',F10.5)
 print*,'*****************************************'
  end if
  x=x2
  n=n+1
end do

contains
real function f(h)
real::h
f=h**2-h
end function
real function df(h)
real::h
df=2*h-1
end function
end program newton
