 program ejemplo
    integer n, i
    real, dimension(100)::x   !equivalente a real x(100)
    real::suma, media, varianza

    !lectura de los números por teclado  x(i). para terminar poner 9990

    i=0
    do
        i= i+1
        print*, 'i=  ',i
        read*, x(i)
        if (x(i)==9999) exit
		 n=i-1
    end do

    !el último número no se considera,9999,


    !cálculo de la suma media y varanza

    suma=0
    do i=1,n
        suma=suma+x(i)
    end do

    media=suma/n

    varianza=0
    do i=1,n
        varianza=varianza + (x(i)-media)**2
    end do
    varianza=varianza/n
    !escritura de resultados
    print 9000,' se han leido ',n, 'numeros'
    9000 format (5x,A,I4,5x,A)
    print 9010, 'suma=  ',suma, 'media= ',media, 'varianza= ', varianza
    9010 format (//2X,A,F10.4,3X,A,F10.4,3X,A,F14.5)




end program