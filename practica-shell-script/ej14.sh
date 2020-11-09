#!/bin/bash
if [$# -ne 3]; then
	echo "para utilizar el comando debe introducir "
	echo "-a CADENA : renombra el fichero concatenando CADENA al final del nombre del archivo"
	echo "-b CADENA : renombra el fichero concantenado CADENA al principio del nombre del archivo"
	echo "ej ./renombra /tmp/ -a EJ"
	echo "o ./renombra /tmp/ -b EJ"
else
	if [ -d $1 ];then
		echo "asd"
		case $2 in
			"-a")
				for FILE in $(ls $1)
				do
					$(mv  $1/$FILE $1/$FILE$3)
				done
			;;
			"-b")
				for FILE in $(ls $1); do
					$(mv $1/$FILE $1/$3$FILE)
				done
			;;
		esac
	fi
fi
exit 0
