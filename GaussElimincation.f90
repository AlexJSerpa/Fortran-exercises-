program gauss
implicit none 
real,dimension(100,100)::A
real,dimension(100)::B,x
integer::n,i,j,suma,k

print*,'ingrese el valor del tamaño de la matriz'
read(*,*)n
print*,'introdusca los elementos de la matriz'

do i=1,n
do j=i,n
 print*,'A(',i,',',j,')='
 read(*,*)A(i,j)
end do 
end do

print*,'ingrese el valor del vector independinte'


do i=1,n
print*,'B´(',i,')='
read(*,*)b(i)
end do 



do i=n-1,1,-1
suma=0
do k=i+1,n
suma = suma+A(i,k)*x(k)
end do 
x(i)=(B(i)-suma)/(A(i,i))
end do 

do i=1,n
print*,'x´(',i,')=',x(i)
end do 



end program gauss







