program op
    implicit none
    real,dimension(100)::x,y
    real,dimension(100)::p,q
    integer::i

    do i=1,100
    x(i)=i*0.1
    y(i)=sin(x(i))*(1-cos(x(i)/3.0))
    end do

open(1,file='alv.txt',status='new')
do i=1,100
    write(1,*)x(i),y(i)
end do
 close(1)
 open(2,file='alv.txt',status='old')
do i=1,100
read(2,*)p(i),q(i)
end do
    close(2)
    do i=1,100
    write(*,*)p(i),q(i)
    end do
    print*,'jodete perrro'

end program op
