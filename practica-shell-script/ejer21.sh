#!/bin/bash
# Creo una pila a través de un arreglo
function push {
        if [ $# -eq 1 ]
        then
                stack+=("$1")
        fi
}

function pop() {
        length=${#stack[@]}
        if [ $length -ne 0 ]
        then
                elem=${stack[$((length-1))]}
                unset 'stack[$((length-1))]'
                echo "$elem"
        fi
}

function length() {
        echo "${#stack[@]}"
}

function print() {
        echo "${stack[@]}"
}
stack=(1 2 3)
push 3
print
pop
push 4
print
length

