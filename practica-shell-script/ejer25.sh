#!/bin/bash
# Este script recibe 1 parámetro
# Con el cual debe realizar una operación
# Sobre un arreglo de los usuarios del sistema
if [ $# -eq 0 ]
then
	exit 1
fi
array=(${array[@]}) # Corrimiento
group=scanner
array=($(grep "^$group" /etc/group | cut -d: -f4 | tr ',' '\n'))
operacion=$1
case $operacion in
	"-l")
	     echo "La longitud del arreglo es ${#array[@]}"
	;;
	"-i") 
	     echo "Los elementos son ${array[@]}" 
        ;; 
	"-b")	
	    if [ $# -ne 2 ]
	    then
	         exit 1
	    fi
	    echo "${array[$2]}" 
	    ;;
esac

