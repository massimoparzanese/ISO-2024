#!/bin/bash
# Este script busca todos los .doc en el /home
# Los guarda en un arreglo
# Y luego despliega un menú de opciones para que el usuario elija que hacer
# Sobre el arreglo
function verArch() {
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
function eliminarArch() {
	echo "Ingrese el archivo a eliminar"
	read archivo
	eliminado=0
	opciones=("Si" "No")
	select opcion in ${opciones[@]}
	do
		for((i=0; i < ${#array[@]}; i++))
		do
			doc=$(basename ${array[$i]})
			if [ "$doc" = "$archivo" ]
			then
				eliminado=${array[$i]}
				unset 'array[$i]'
				array=(${array[@]})
				echo "arreglo nuevo ${array[@]}"
				break 1
			fi
		done
		if [ "$opcion" = "No" ]
		then
			sudo rm $eliminado
		fi
		break
					
	done
}
dir=/home
for archivo in "$dir"/*
do
	if [ -f "$archivo" ]
	then
		array+=$archivo
	fi
done
options=("verArchivo" "borrarArchivo" "cantidadArchivos" "Fin")
select option in ${options[@]}
do
	case $option in
		"verArchivo")
			verArch
		;;
		"cantidadArchivos")
			echo "la cantidad de archivos .doc es: ${#array[@]}"
		;;
		"borrarArchivo")
			eliminarArch
		;;
		"Fin")
			echo "Terminó"
			exit 0
		;;
	esac
done
