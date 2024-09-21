#!/bin/bash
# Este script espera verifica cada 10 segs
# Si el usuario se ha logueado al sistema
if [ $# -ne 1 ]  
then
	echo "Debe enviar el parámetro requerido" 
	exit 1
fi
termine=1
until [ $termine -ne 1 ] 
do
	sleep 10
	if users | grep -w $1  
	then
		echo "Encontré al usuario"
	 	termine=0	
	fi
done
 
