#!/bin/bash
# Este script Lista los la cantidad de archivos
# Con una extensión determinada para cada usuario
if [ $# -ne 1 ]  
then
	echo "Se debe enviar la extensión a buscar"
	exit 1
fi
for  aux in $(cut -d: -f1,6 /etc/passwd)
do
	if [ -d $aux ]
	then	
		usuario=$(echo $aux | cut -d : -f1) 	
		homeusuario=$(echo $aux | cut -d : -f2) 	
		cantidad=$(find $homeusuario -name "*$1" | wc -l)
		echo " $usuario   $cantidad" >> reporte.txt
	fi
done
echo "Reporte realizado con éxito"
 
