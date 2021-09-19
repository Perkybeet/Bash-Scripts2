#!bin/bash
echo "Nombre del archivo que quiere crear:"
read name_dir
mkdir $name_dir
echo "Desea copiar algun archivo dentro de esta carpeta ya creada?"
read respuesta
    if [ $respuesta = "si" ]
    then
        echo "Cuales?"
        read archivos
        cp $archivos $name_dir
        echo "Hecho"
    else
        echo "Vuelve a intentarlo"
        [ "^C" ]
    fi
