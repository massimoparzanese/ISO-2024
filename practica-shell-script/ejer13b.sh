#!/bin/bash
# Este script da a elegir 3 opciones
# Las cuales son:
# 1: mostrar el listado del directorio actual
# 2: Ejecuta pwd para saber donde estamos
# 3: muestra los usuarios conectados al sistema
options=("Listar" "DondeEstoy" "QuienEsta" "Salir")
select option in "${options[@]}"
do
	case $option in
	"Listar")
	       ls
	       echo "Esos es lo que hay en el direc actual"
	;;
	"DondeEstoy")
	     pwd
	     echo "En ese directorio estamos"
	;;
	"QuienEsta")
	      who
	      echo "Estos usuarios hay en el sistema"
	;;
	"Salir")
	    echo "Terminará el programa"
	    break
	;;
	esac
done

