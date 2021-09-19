#funciones
clear
echo "Que desea hacer?"
echo "Estas en: `pwd`"
echo " ======================"
echo "| 0   = Salir          |   "
echo "| 1   = Crear archivo  |   "
echo "| 2   = Borrar archivo |   "
echo "| 3   = Copiar archivo |   "
echo "| 4   = Mover archivo  |   "
echo "| cd  = Moverte a...   |   "
echo " ======================"
read var1
                if [ $var1 = "1" ]
                then
                    echo "Nombre del archivo:"
                    read name
                    mkdir $name
                    echo "$?"
                    ./menu.sh
                fi
                if [ $var1 = "2" ]
                then
                    echo "Nombre del archivo:"
                    read name
                    rm -r $name 
                    ./menu.sh
                fi
                if [ $var1 = "3" ]
                then
                    echo "Que archivo/s desea copiar"
                    read name
                    echo "Ubicación:"
                    read ubicacion
                    cp $name $ubicacion
                    ./menu.sh
                fi
                if [ $var1 = "4" ]
                then
                    echo "Que archivo/s desea mover"
                    read name
                    echo "Ubicacion:"
                    read ubicacion
                    mv $name $ubicacion
                    ./menu.sh
                fi
                if [ $var1 = "cd","cd ]
                then
                    cd $1$2$3$4
                    ./menu.sh
                fi
