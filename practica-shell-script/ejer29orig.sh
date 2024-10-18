#!/bin/bash
# Este script busca todos los .doc en el /home
# Los guarda en un arreglo
# Y luego despliega un menú de opciones para que el usuario elija que hacer
# Sobre el arreglo
function verArchivo() {
	echo "Ingrese el nombre del archivo a buscar"
	read archivo
	for i in ${array[@]}
	do
		doc=$(basename $i)
		if [ "$doc" = "$archivo" ]
		then
			cat $i
			break
		fi
	done
}
function cantidadArchivos() {
	echo ${#array[@]
}
function eliminarArchivo() {
	echo "Ingrese el archivo a eliminar"
	read archivo
	eliminado=0
	encontrado=0
	opciones=("Si" "No")
	for((i=0; i < ${#array[@]}; i++))
	do
		doc=$(basename ${array[$i]})
		if [ "$doc" = "$archivo" ]
		then
			encontrado=$i
						break 
		fi
	done
	if [ encontrado -ne 0 ]
	then
	 	echo "¿Desea eliminar el archivo?"
		echo "Igrese Si, o No"
		read opcion
		eliminado=${array[$i]}
		unset 'array[$i]'
		array=(${array[@]})
		echo "arreglo nuevo ${array[@]}"
		if [ $opcion = "No" ]
		then 
			sudo rm $eliminado
		fi
 	else
		return 3
	fi
}
dir=/home
array=$((find -name "*.doc"))
options=("verArchivo" "borrarArchivo" "cantidadArchivos" "Fin")
select option in ${options[@]}
do
	case $option in
		"verArchivo")
			verArchivo
		;;
		"cantidadArchivos")
			cantidadArchivos
		;;
		"borrarArchivo")
			eliminarArchivo
		;;
		"Fin")
			echo "Terminó"
			exit 0
		;;
	esac
done
