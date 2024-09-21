#!/bin/bash
# Este script chequea si el parámetro es un directorio
# E informa los archivos que lo conforman (sin contar directorios)
if [ $# -ne 0 ]
then
	if [ -d "${1}" ]
	then
		echo "$(ls -l $1 | grep ^- | wc -l)"
	else
		echo "No se ha enviado un directorio"
		exit 1
	fi
else 
	echo "Debe enviar un parámetro"
	exit 4
fi	
