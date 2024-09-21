#!/bin/bash
# Este script crea funciones
# Para realizar diferentes operaciones sobre arreglos
# Utilizaré una estructura de control para que el usuario
# Seleccione la operación a realizar
function inicializar() {
	array=()
	echo "Arreglo creado"
}
function agregar_elem() {
	if [ -n "$array" ]
	then
		if [ $# -ne 0 ]
		then
			array+=("$1")
			echo "El valor se agrego al arreglo con éxito"
		else
			echo "No se pudo agregar el valor ya que no se envió como parámetro"
		fi
	fi
}
function eliminar_elem() {
	if [ -n "${array}" ] 
	then
		if [ $# -eq 1 ]  # Pregunto si me pasaron el parámetro
		then
			if [ $1 -lt ${#array[@]} ]  # Verifico si la posición es válida
			then
				unset '${array[$1]}'
				array=(${array[@]}) # Realizo corrimiento
			else
				echo "La posición pasada por parámetro no es válida"
			fi
		else
			echo "Debe pasar el parámetro"
		fi
	else
		echo "No se puede eliminar un elemento si el arreglo no está creado"
	fi
}
function longitud() {
	if [ -n "$array" ]
	then
		echo "La longitud del arreglo es: ${#array[@]}"
	else
		echo "No se puede imprimir la longitud ya que no se creo el arreglo"
	fi
}
function imprimir() {
	if [ -n	"$array" ]
	then
		echo "Los elementos del arreglo son : ${array[@]}"
	else
		echo "No se pudo imprimir a ya que no se creó el arreglo"
	fi
}
function inicializar_Con_Valores() {
	if [ $# -ne 2 ]
	then
		echo "Debe pasar los parámetros correspondientes"
	else
		array=()
		for((i=0; i < $1; i++))
		do
			array+=("$2")
		done
		echo "EL arreglo es : ${array[@]}"
	fi
}
options=("inicializo_arreglo" "agregarelemento" "eliminar_elemento" "longitud_arreglo" "imprimir_arreglo" "inicializar_Con_Valores_arr" "Fin")
select action in "${options[@]}"
do
	case $action in 
		"inicializo_arreglo")
			inicializar
			array=()
		;;
		"agregarelemento")
			agregar_elem 4
		;;
		"eliminar_elemento")
			eliminar_elem 2
		;;
		"longitud_arreglo")
			longitud
		;;
		"imprimir_arreglo")
			imprimir
		;;
		"inicializar_Con_Valores_arr")
			inicializar_Con_Valores 3 4
		;;
		"Fin")
			echo "El programa terminará"
			exit 0
		;;

	esac
done




