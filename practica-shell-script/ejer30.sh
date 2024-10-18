#!/bin/bash
# Este script copia todos los archivos del home ejecutables
# Del usuario conectado al sistema en este momento
# Y los mueve a la carpeta bin
# Si esta no existe la crea
cant=0
if [ ! -d ~/bin ]
then
	mkdir ~/bin	
fi
for archivo in ~/*
do
	if [ -f $archivo ]  && [ -x "$archivo" ]
	then
		echo "Se moverá el archivo $archivo"
		cant=$((cant + 1))
		mv $archivo ~/bin
	fi
done
echo "La cantidad de archivos que se movieron es $cant"
