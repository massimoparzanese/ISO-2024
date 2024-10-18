#!/bin/bash
function cantidad() {
	echo "${#array[@]}"
}
function listar() {
	echo "${array[@]}"
}
function eliminar() {
	if [ $# -ne 2 ]
	then
		return 1
	fi
	cant=${#array[@]}
	if [ $1 -lt $cant ]
	then
		eliminado=${array[$1]}
		unset array[$1]
		array=(${array[@]})
		if [ "$2" = "f" ]
		then
			sudo rm $eliminado
		fi
	fi
}
function fin() {
	exit 0
}
array=()
for elem in /var/log/*
do
	if [ -f $elem ]
	then
		contiene=$(echo "$elem" | grep "access")
		if [ $contiene ]
		then
			array=(${array[@]} $contiene)
		fi
	fi
done
opciones=("cantidad" "listar" "eliminar" "fin")
select option in ${opciones[@]}
do
	case $option in
		"cantidad")
			cantidad
		;;
		"listar")
			listar
		;;
		"eliminar")
			echo "Ingrese la posición a eliminar"
			read pos
			echo "Ingrese la operación a realizar l/f"
			read op
			eliminar $pos $op
		;;
		"fin")
			fin
		;;
	esac
done
