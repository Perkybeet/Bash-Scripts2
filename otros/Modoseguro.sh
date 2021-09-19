#!/bin/bash
sudo clear
cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!             -help para mas ayuda"
cal
cd /
echo -----------------------------------------
echo "Desdea realizar comprobaciones de seguridad antes de empezar (s/n)?"
read name
    if [ "$name" == "s" ];
        then echo Preparando comprobaciones: && echo -ne ' (0%)\r' && echo -ne '### (4%)\r' && echo -ne '#### (5%)\r' && echo -ne '##### (6%)\r' && echo -ne '########################### (67%)\r' && echo -ne '############################################# (99%)\r' && echo -ne '############################################## (100%)\r' && echo -ne '############################################## (Iniciando...)\r' && wait
        echo ""
        echo ===========================================================
        echo Realizando conexión de prueba...
                ping -c4 8.8.8.8 && sleep 4
        if [ $? = 0 ]
        then
            echo "[Correcto]"
        else
            echo -e "\e[91m[ERROR]\e[0m"
        fi
        echo ===========================================================
        echo Actualizando paquetes necesarios...
                sleep 4
                        sudo apt upgrade -y && wait
                                sudo apt update && wait
                            		 if [ $? = 0 ]
        				then
            					echo "[Correcto]"
        				else
            					echo -e "\e[91m[ERROR]\e[0m"
        				fi
                                    echo ========ls===================================================
                                        sudo apt install e2fsprogs -y
                                                sudo badblocks -v /dev/sda1 && sleep 3
                                             	if [ $? = 0 ]
        					then
            						echo "[Correcto]"
        					else
            						echo -e "\e[91m[ERROR]\e[0m"
        					fi
					echo ===========================================================
                                                echo Comprobando servicio DNS...
                                                    dig -c4 www.google.es && wait && sleep 4
                                                         	if [ $? = 0 ]
        							then
            								echo "[Correcto]"
        							else
           								 echo -e "\e[91m[ERROR]\e[0m"
        							fi
						echo =========================================================
                                                            echo Realizando benchmark para la comprobación de errores...
                                    sudo apt install fio -y
                                                        sudo fio --name=randwrite --ioengine=libaio --iodepth=1 --rw=randwrite --bs=4k --direct=0 --size=800M --numjobs=4 --runtime=270 --group_reporting && wait && sleep 3 
 	if [ $? = 0 ]
        then
            echo "[Correcto]"
        else
            echo -e "\e[91m[ERROR]\e[0m"
        fi
    clear
    echo Comprobaciones realizadas correctamente.
        echo =====================================
        else [ "^C" ]
if [ "$name" == 'info' ];
        then sudo clear
cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!"
cal
cd /
echo "Propiedad de: Yago Lopez Prado © 2020" 
    echo ====================================
else
    echo --------------------------
    echo -ne 'CComprobaciones abortadas|\r'
    echo "|"
    echo --------------------------

fi
fi
if [ "$name" == '-help' ];
            then sudo clear
            cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!"
            cal
            cd /
            echo =========================================
            echo  iniciar    =   Inicia las comrpobaciones
            echo  abortar    =   Aborta las comprobaciones
            echo  "info"     =   Información de la script
            echo =========================================
        echo Iniciar comprobaciones?
        read intro
            else [ "^C" ]
        fi
                if [ "$intro" == 'iniciar' ];
                then ./home/yago/scripts/Modoseguro.sh && echo iniciar
                    else [ "^C" ]
            fi
                    if [ "$intro" == 'info' ];
                then
                    clear
                    cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!"
                    cal
                    cd /
                    echo =====================================
                    echo "Propiedad de: Yago Lopez Prado © 2020"
            echo =====================================
cd /
echo "Volver al inicio? (s/n)"
read name
    if [ "$name" == "s" ];
        then echo Iniciando comprobaciones: && echo -ne ' (0%)\r' && sleep 3 && echo -ne '### (4%)\r' && sleep 1 && echo -ne '#### (5%)\r' && sleep 0.5 && echo -ne '##### (6%)\r' && sleep 0.5 && echo -ne '########################### (67%)\r' && sleep 0.5 && echo -ne '############################################# (99%)\r' && sleep 4 && echo -ne '############################################## (100%)\r' && sleep 1 && echo -ne '############################################## (Completado)\r' && wait && sleep 1 &&
        echo ""
        echo ===========================================================
        echo Realizando conexión de prueba...
                ping -c4 8.8.8.8 && sleep 4
        if [ $? = 0 ]
        then
            echo "[Correcto]"
        else
            echo -e "\e[91m[ERROR]\e[0m"
        fi
        echo ===========================================================
        echo Actualizando paquetes necesarios...
                sleep 4
                        sudo apt upgrade -y
                             if [ $? = 0 ]
        				then
            					echo "[Correcto]"
        				else
            					echo -e "\e[91m[ERROR]\e[0m"
        				fi   
                            sudo apt update
                            		 if [ $? = 0 ]
        				then
            					echo "[Correcto]"
        				else
            					echo -e "\e[91m[ERROR]\e[0m"
        				fi
                                    echo ========ls===================================================
                                        sudo apt install e2fsprogs -y
                                                sudo badblocks -v /dev/sda1 && sleep 3
                                             	if [ $? = 0 ]
        					then
            						echo "[Correcto]"
        					else
            						echo -e "\e[91m[ERROR]\e[0m"
        					fi
					echo ===========================================================
                                                echo Comprobando servicio DNS...
                                                    dig -c4 www.google.es && wait && sleep 4
                                                         	if [ $? = 0 ]
        							then
            								echo "[Correcto]"
        							else
           								 echo -e "\e[91m[ERROR]\e[0m"
        							fi
						echo =========================================================
                                                            echo Realizando benchmark para la comprobación de errores...
                                    sudo apt install fio -y
                                                        sudo fio --name=randwrite --ioengine=libaio --iodepth=1 --rw=randwrite --bs=4k --direct=0 --size=800M --numjobs=4 --runtime=270 --group_reporting && wait && sleep 3 
 	if [ $? = 0 ]
        then
            echo "[Correcto]"
        else
            echo -e "\e[91m[ERROR]\e[0m"
        fi
    clear
    echo Comprobaciones realizadas correctamente No se ha encontrado ningún fallo
        echo =====================================
        else [ "^C" ]
if [ "$name" == 'info' ];
        then sudo clear
cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!"
cal
cd /
echo "Propiedad de: Yago Lopez Prado © 2020" 
    echo ===================================
else 
    echo ========================
    echo Comprobaciones abortadas
fi
fi
if [ "$name" == '-help' ];
            then sudo clear
            cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!"
            cal
            cd /
            echo ===================================
            echo  si    =   Inicia el modo seguro
            echo  no    =   Aborta el modo seguro
            echo -info  =   Información de la script
            echo ===================================
        echo "Desde volver al modo seguro? (s/n)"
        read intro
            else [ "^C" ]
        fi
                if [ "$intro" == "s" ];
                then ./home/yago/scripts/Modoseguro.sh
                    else [ "^C" ]
            fi
                    if [ "$intro" == '-info' ];
                then
                    clear
                    cowsay -f tux.cow "Bienvenido de nuevo, $(whoami)!"
                    cal
                    cd /
                    echo "Propiedad de: Yago Lopez Prado © 2020"

    echo =====================================
                    else [ "^C" ]
fi
    echo =====================================
                    else [ "^C" ]
fi

# Propiedad de Yago López Prado © 2020
