#!/bin/bash
# Este Script lo que hace es: recibir una cantidad de 2 parámetros
# Antes de hacer lo que debe, verifica si los parámetros fueron enviados
# Acciones: Suma 2 números y los imprime en pantalla
if [ $# -ne 2 ] 
then
         echo "Error, no se han pasado los parámetros para el funcionamiento correcto"
	exit 1
else
        sum=$(($1 + $2))
        echo "El primer parametro es $1, el segundo $2, y la suma es $sum"
fi
