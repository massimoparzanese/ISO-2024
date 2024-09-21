#!/bin/bash
# Este scripts suma los elementos de cada posición
# De 2 arrays e imprime la suma en pantalla
vector1=(1 4 6 7)
vector2=(5 6 7 10)
for((i=0; i < ${#vector1[@]}; i++))
do
	suma=$((vector1[i] + vector2[i]))
	echo "La suma entre ${vector1[i]} y ${vector2[i]}"
	echo " Es: ${suma} " 
done

