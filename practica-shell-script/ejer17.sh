#!/bin/bash
# Este script recorre los archivos del directorio actual
# Los imprime y le quita una letra pasada por parámetro
for file in ./*
do
	echo $file | tr -d $1 
done
