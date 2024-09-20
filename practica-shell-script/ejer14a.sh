#!/bin/bash
# Este script agrega a los archivos de un directorio
# Pasado por parámetro
# Una cadena ingresada por teclado
# AL principio del mismo
if [ $# -ne 2 ] 
then
	echo "Debe mandar los parámetros requeridos"
	exit 1
fi
if [ -d $1 ]
then
	directorio=$1
	cadena=$2
else
	cadena=$1
	directorio=$2
fi
for nombre in "$directorio"/* 
do
	if [ -f "$nombre" ]
	then
		nombre_archivo=$(basename "$nombre")
		mv "$nombre" "$directorio/${cadena}${nombre_archivo}"
	fi
done
