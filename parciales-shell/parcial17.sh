#!/bin/bash
if [ $# -ne 1 ]
then
	exit 2
fi
usuario=$(cat /etc/passwd | cut -d: -f1 | grep "$1")
if [ $usuario ]
then
	cant=0
	while [ $cant -lt 30 ]
	do
		sleep 30 
		conectado=$(users | grep "$1") 
		if [ $conectado ] 
		then
			cant=$((cant + 1))
			fecha=$(date)
			echo "$1 $fecha" >> /var/log/access${1}.log
		fi
	done
	exit 0	
else
	exit 1
fi
