program pascal
    implicit none
    integer,parameter::n=100
    integer,dimension(n,n)::matriz
    integer::i,j,tam=0
    open(unit=10,status='new',file='miraperro.txt')
    do while(tam.LT.1 .OR. tam.GT.100 )
        print*,'introdusaca un valor entre 1 y 10'
        read*,tam
    end do
    do i=1,tam
        do j=1,tam
            matriz(i,j)=1
        end do
    end do
    do i=2,tam
        do j=2,tam
            matriz(i,j)=matriz(i-1,j)+matriz(i,j-1)
        end do
    end do
    print*,'la matriz de pascal de orden',tam, 'es'
    do i=1,tam
    write(10,*) (matriz(i,j),j=1,tam)
    end do
end program
