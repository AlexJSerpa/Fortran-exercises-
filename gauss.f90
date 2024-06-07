Program gauss
implicit none
integer,parameter::n=3
real,dimension(n,n)::a
real,dimension(n)::c
real,dimension(n)::x
integer::i,j ,iter ,k
real::old,sum,ea,es=0.00001,s,jaja
read(*,*)((a(i,j),j=1,n),i=1,n)
read(*,*)(c(i),i=1,n)
read(*,*)(x(i),i=1,n)
print*,'diga la dimension de la matrix'
!checking diagonal dominant
do i=1,n ;s=0
do j=1,n
if(i.ne.j)s=s+abs(a(i,j))
end do
if(abs(a(i,i)).lt.s)then
write(*,*) "these equtions are not diagonal"
stop ; end if; end do
do i=1,n
jaja=a(i,i)
do j=1,n
a(i,j)=a(i,j)/jaja
end do ; c(i)=c(i)/jaja
end do
iter=0 ; k=0
do while (iter<10.and. k==0)
iter=iter+1
k=1
do i=1,n
old=x(i)
sum=c(i)
do j=1,n
if(i.ne.j)then
sum=sum-a(i,j)*x(j)
end if
end do
x(i)=sum
print*,x(i)
if(x(i).ne.0 .and. k==1) ea=(abs(x(i)-old)/x(i))*100
if(ea.gt.es) k=0
end do
print*,'el resulto es'

 end do
end program gauss
