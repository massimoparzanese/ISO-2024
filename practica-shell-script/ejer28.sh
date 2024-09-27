#!/bin/bash
# Este script realiza la busqueda de archivos en un directorio
# Si el directorio existe, debe contar todos los archivos con permiso de lecturay ejecución
if [ $# -ne 1 ]
then
	echo "No se paso el parámetro"
	exit 1
fi
if [ -d "${1}" ]
then
	lectura=0
	escritura=0
	echo "${1}"
	for contenido in "${1}"/*
	do
		if [ -f $contenido ]
		then
			echo "${contenido}"
			if [ -r $contenido ]
			then
				lectura=$((lectura + 1))
			fi
			if [ -w $contenido ]
			then
				escritura=$((escritura + 1))
			fi
		fi
	done
	echo " La cantidad de archivos que puedo leer es: ${lectura}"
	echo " La canidad de archivos que puedo escribir es: ${escritura}"
else
	exit 4
fi
