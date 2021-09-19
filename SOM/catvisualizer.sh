#!bin/bash
#visualizar archivos
while [ ! -z $1 ]
do
    echo $1
    echo "#########"
    cat $1
    sleep 0.1
     shift
     echo ""
     echo ""
done