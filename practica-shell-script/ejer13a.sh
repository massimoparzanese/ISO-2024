#!/bin/bash
# Este script muetra los primeros 100 números, y de cada uno su potencia
num=1
for((i=1; i <= 100; i++))
do
	echo "El número es ${i}"
	num=$((${i} * ${i})) 
	echo "Su cuadrado es ${num}"
	echo "-----------------------------" 
done
