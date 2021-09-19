#!/bin/bash
 
# Escribo el principio del programa , pidiendo al usuario que introduzca el nombre de su nuevo fichero y quitándole todos los permisos al mismo una vez creado.
 
echo "Escribe el nombre de tu fichero"
 
read fichero
 
touch $fichero.txt

echo -e "\rPermisos?"
read perms
chmod $perms $fichero.txt
 
# Creo todas las opciones del menú 
 
echo "1=Visualizar permisos de $fichero.txt"
echo "2=Dar permisos de lectura a $fichero.txt"
echo "3=Dar permisos de escritura a $fichero.txt"
echo "4=Dar permisos de ejecución a $fichero.txt"
echo "5=Salir"
 
read input
 
# Creo el cuerpo del menú en cuestión , empezando de arriba a abajo ya que primero confeccioné la opción "Salir"
 
   if [ "$input" = "5" ]; then 
        echo "Gracias por usar mi script! ¿ Deseas borrar el archivo que acabas de crear ?" # Cuando el usuario elije la opción "Salir" le pregunto si quiere deshacerse del archivo que ha creado usando un submenú.
            if [ $input = "Si" ]; then
            rm $fichero.txt
            echo "Archivo borrado correctamente" # Si quiere borrar el archivo lo borra , si no salimos del programa mediante exit.
            exit
            else
            echo "Hasta la próxima!"
            exit    
        fi
 
# A partir de aquí es todo lo mismo , las opciones 2 , 3 y 4 son idénticas , solo cambia el echo y el valor de chmod
 
    elif [ "$input" = "4" ]; then  
    chmod +x $fichero.txt
    echo "Agregado permiso de ejecución a $fichero.txt"
 
 
    elif [ "$input" = "3" ]; then
    chmod +w $fichero.txt
    echo "Agregado permiso de escritura a $fichero.txt"
 
 
    elif [ "$input" = "2" ]; then
    chmod +r $fichero.txt
    echo "Agregado permiso de lectura a $fichero.txt"
 
 
    elif [ "$input" = "1" ]; then # La opción1 nos permite visualizar los permisos mediante ls -la
    ls -la $fichero.txt
 
 
    else
        echo "Opción no válida" # Por último , si el usuario eligiese cualquier otra opción que no fuese de la 1 a la 5 , imprimiríamos en pantalla "Opción no válida"
fi
