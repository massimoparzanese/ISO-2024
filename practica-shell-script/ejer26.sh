#!/bin/bash
# Este script recibe una cantidad indeterminada de parámetros
# Si llega 1 o más, debe iterar sobre ellos
if [ $# -ne 0 ]
then
	array=("$@") # me quedo con todos los parámetros
	inexistentes=0
	for((i=0; i < ${#array[@]}; i++)) 
	do
		pos=$((i % 2)) # me quedo con la posición act
		if [ $pos -ne 0 ]
		then
			if [ -e "${array[$i]}" ]  # Pregunto si existe
			then
				
				echo "El parámetro de la posición $i"
				echo "Que contiene ${array[$i]} "	
				if [ -f ${array[$i]} ]
				then
					echo "Es un archivo"
				elif [ -d ${array[$i]} ]
				then
					echo "Es un directorio"
				else
					echo "No es ni un archivo, ni un directorio"
				fi
			else
				inexistentes=$((inexistentes + 1))
			fi
		fi
	done
	echo "La cantidad de archivos que no existen"
	echo "En el sistema es: $inexistentes"
else 
	exit 1
fi
