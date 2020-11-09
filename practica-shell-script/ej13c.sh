#!/bin/bash
if [ $# -eq 1 ]; then
	if [ -d $1 ]; then
		echo "$1 es un directorio"
	elif [ -f $1 ]; then
		echo "$1 es un archivo"
	else
		echo "$1 no existe pa flashiaste banda"
		mkdir $1
		echo "ahora existe pa no te preocupes todos cometen errores"
		sleep 5
		echo "mogolico"
	fi
else
	exit 1
fi
