#!/bin/bash
if [ $# -ne 1 ];then
	echo "Parametros mal pasados"
	exit 2
else
	while true
	do
		echo "Buscando usuario"
		if [ "$1" == $(who | cut -d " " -f1 | grep $1) ]
		then
			echo "se encontro el usuario logueado"
			break
		fi
	sleep 10
	done
fi
exit 0
