program  matrix
implicit none
real,dimension(100,100)::A,B,C
integer::i,j,n=3
print*,'escriba la dimension de su matriz'
read*,n
print*,'ingrese su primera matriz'
read*,A
do i=1,n
do j=1,n
    print*,'digite los elemnetos ',i,',',j,')'
 read(*,*)A(i,j)
end do
end do
print*,'ingrese su segunda matriz'
read*,B
do i=1,n
do j=1,n
    print*,'digite los elemnetos ',i,',',j,')'
 read(*,*)B(i,j)
end do
end do

print*,25,(A(i,j),j=1,n)
25 Format(3F10.4)

end program matrix
