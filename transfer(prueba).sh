#!/bin/bash

###################################################################
#Script name	:transfer.sh
#Description	:Transferir archivos en la misma red local por scp/ssh con tan solo arrastrar x archivos a x carpeta y posteriormente, ejecutar la script en el equipo en el cual se quiere recibir.
#Args         	:
#Author       	:Yago López Prado
#Email         	:[email protected]
cd /
echo "Nombre de la carpeta donde se ubicaran los archivos:"
read nombre
echo "Ubicación de la carpeta:" && echo "Ejemplo: /home/usuario/carpeta \r"
read ubicacion
echo "Conoce la contraseña para poder realizar la conexión al host remoto?"
read pass
cd /
if [ $pass = "si" ]
then
echo "====================="
echo "Es corrrecto? (si/no)"
echo "Nombre = $nombre"
echo "Ubicación = $ubicacion"
echo "Contraseña = ****"
read respuesta
if [ $respuesta = "si" ]
then
cd $ubicacion
mkdir $nombre
cd /
sudo scp -r yago@192.168.40.211:/home/yago/host $ubicacion/$nombre
wait && echo "Recibiendo datos..."
clear 
echo "Hecho"
else
echo "Intentelo de nuevo"
[ "^C" ]
fi
else
echo "Intentelo de nuevo cuando tenga la clave de acceso" 
[ "^C" ]
fi
exit
