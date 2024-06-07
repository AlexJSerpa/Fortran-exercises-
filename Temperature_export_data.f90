program  temperaturas
    implicit none
    character(len=20)::archivo,salida
    integer::cuenta,err_apertura,err_lectura
    real::temperatura,suma,media
    write(*,2)
     2 format('0','nombre del archivo con datos :',$)
     read(*,*)archivo
     open(15,file=archivo,status='old',iostat=err_apertura)
     if (err_apertura>0) stop 'error al abrir el archivo '
     100 format(1x,f4.1)
     cuenta=0
     suma=0
     do
        read(15,100,iostat=err_lectura)temperatura
        if(err_lectura>0)then
            print*,'error de lectura'
        exit
        else if(err_lectura<0)then
        print*,'fin del archivo'
        exit
        else
            suma=suma+temperatura
            cuenta=cuenta+1

        end if
     end do
     write(*,3)
     3 format('0','nombre del archivo de salida :',$)
     read(*,*)salida
     media=suma/real(cuenta)
     open(16,file=salida,status= 'new')
     write(*,*)'temperatura  :',media
     write(16,*)'temperatura:',media
     close(16)
     close(15)

end program  temperaturas
