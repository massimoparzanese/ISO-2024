#!/bin/bash
# Este script recorre un arreglo
# EN una función
# En la cual imprime los números pares
# E imprime la cantidad de impares
function imprimir() {
	if [ ${#num[@]} -ne 0 ]
	then
		cant=0
		for i in "${num[@]}" 
	 	do
		resultado=$((i % 2))
			if [ $resultado -eq 0 ]
			then
				echo "El par es $i"
		        else
		 		((cant++))		
			fi
		done
		echo "La cantidad de impares es $cant"
	fi
}	
num=(2 3 4 5 6)
imprimir
