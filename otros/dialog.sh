#! / bin / sh
Muestrame el menu(){
    normal = `echo" \ 033 [m "`
    menu = `echo" \ 033 [36m "` #Azul
    número = `echo" \ 033 [33m "` #amarillo
    bgred = `echo" \ 033 [41m "`
    fgred = `echo" \ 033 [31m "`
    printf "\ n $ {menu} ****************************************** *** $ {normal} \ n "
    printf "$ {menu} ** $ {number} 1) $ {menu} Montar dropbox $ {normal} \ n"
    printf "$ {menu} ** $ {number} 2) $ {menu} Montar USB 500 Gig Drive $ {normal} \ n"
    printf "$ {menu} ** $ {number} 3) $ {menu} Reiniciar Apache $ {normal} \ n"
    printf "$ {menu} ** $ {number} 4) $ {menu} ssh Servidor Frost TomCat $ {normal} \ n"
    printf "$ {menu} ** $ {number} 5) $ {menu} Algunos otros comandos $ {normal} \ n"
    printf "$ {menu} ******************************************** * $ {normal} \ n "
    printf "Ingrese una opción de menú e ingrese o $ {fgred} x para salir. $ {normal}"
    leer opt
}

option_picked () {
    msgcolor = `echo" \ 033 [01; 31m "` # negrita rojo
    normal = `echo" \ 033 [00; 00m "` # blanco normal
    mensaje = $ {@: - "$ {normal} Error: no se pasó ningún mensaje"}
    printf "$ {msgcolor} $ {message} $ {normal} \ n"
}

claro
Muestrame el menu
mientras que [$ opt! = '']
    hacer
    si [$ opt = '']; entonces
      salida;
    más
      caso $ opt in
        1) claro;
            option_picked "Opción 1 elegida";
            printf "sudo mount / dev / sdh1 / mnt / DropBox /; #The 3 terabyte";
            Muestrame el menu;
        ;;
        2) claro;
            option_picked "Opción 2 elegida";
            printf "sudo mount / dev / sdi1 / mnt / usbDrive; #The 500 gig drive";
            Muestrame el menu;
        ;;
        3) claro;
            option_picked "Opción 3 elegida";
            printf "sudo service apache2 restart";
            Muestrame el menu;
        ;;
        4) claro;
            option_picked "Opción 4 elegida";
            printf "ssh lmesser @ -p 2010";
            Muestrame el menu;
        ;;
        x) salir;
        ;;
        \ n) salir;
        ;;
        *)claro;
            option_picked "Elige una opción del menú";
            Muestrame el menu;
        ;;
      esac
    fi
hecho