#!/bin/bash
# Este script busca en el directorio personal de los
# usuarios la carpeta mailDIr y deben tener bash como shell como consola
# Se debe guardar en /var/listado.txt
usuarios=($(cat /etc/passwd))
for elem in ${usuarios[@]}
do
	usuario=$(echo "$elem" | cut -d: -f1 )
	home=$(echo $elem | cut -d: -f6)
	shell=$(echo $elem | cut -d: -f7)
	if [ -d $home ]
	then
		if [ -d "$home"/mailDir ] && [ "$shell" = "/bin/bash" ]
		then
			echo $usuario
			 echo $usuario >> /var/listado.txt
		fi
	fi
done
	
