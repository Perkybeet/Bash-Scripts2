#!/bin/bash

(
# =================================================================
# Configure un-configured packages
echo "# Actualizando repositorios..." ; sleep 2
sudo apt upgrade-all -y


# =================================================================
# Run Software Updater...
echo "25"
echo "# Importando actualizaciones..." ; sleep 2
sudo apt update


# =================================================================
# Remove extra programs...
echo "50"
echo "# Comprobando la conexión..." ; sleep 2
ping -c4 8.8.8.8


# =================================================================
echo "75"
echo "# Verificando puertos..." ; sleep 2
# Nothing happens here!
sleep 2


# =================================================================
echo "99"
echo "# Exportando resultados..." ; sleep 4


# =================================================================
echo "# Listo" ; sleep 2
echo "100"




) |
zenity --progress \
  --title="Simple Maintenance" \
  --text="First Task." \
  --percentage=2 \
  --width=250 \
  # --pulsate


if [ $? = "1" ] ; then
        zenity --error \
          --text="Update error."
fi
exit 0
