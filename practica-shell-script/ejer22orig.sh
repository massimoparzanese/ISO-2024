#!/bin/bash
# Este script multiplica los numeros de un arreglo dado
# Por un número pasado por parámetro a la función
# productoria
function productoria() {
        if [  ${#num[@]} -ne 0  ]
        then
                for ((i=0; i < ${#num[@]}; i++))
                do
                        num[i]=$((${num[i]} * multiplicador)) 
                done
        fi
}
multiplicador=2
num=(10 3 5 7 9 3 5 4) 
echo "El arreglo es ${num[@]}"
productoria
echo "El arreglo nuevo es ${num[@]}"

