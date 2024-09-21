#!/bin/bash
# Este script busca si un directorio/archivo existe
# En caso de no existir, crea el directorio con nombre
# que llega por parámetro
if [ "$#" -ne 1 ]
then
    echo "Debe pasar el parámetro" 
    exit 1
fi
ruta="$1"
if [ -e "$ruta" ]
then
	echo "El archivo $ruta existe"
	exit 0
else
	if [ -d "$ruta" ]
	then
	        echo  "El directorio $ruta existe"
		exit 0
	fi
	mkdir $ruta
	echo "Se ha creado el directorio $ruta"
fi

