#!/bin/bash
# Este script es una calculadora que recibe 2 parámetros
if [ $# -eq 2 ]
then
	options=(+ * - % Salir)
	echo "Seleccione la operacion a realizar"
  	select option in "${options[@]}" 
	do
		case $option in
	     	 "+")
		    	 sum=$(($1 + $2)) 
                    	 echo "La suma de los numeros es ${sum}"
	     	 ;;
	     	 "-")
		    	 sum=$(($1 - $2)) 
		    	 echo "La resta de los numeros es ${sum}" 
             	 ;;
	     	 "*")
		    	 sum=$(($2 * $1))
		    	 echo "EL producto es ${sum}"
             	 ;;
	     	 "%")
		    	 sum=$(($2 % $1))
		    	 echo "La division dio como resultado ${sum}"
	     	 ;;
             	 "Salir")
		    	 echo "Termino"
		    	 break
	     	 ;;
       		 esac
	done
else
	echo "No se pudo realizar el cálculo ya que no se han ingresado"
	echo "Los parámetros suficientes"
fi
