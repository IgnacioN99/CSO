#!/bin/bash
if [ $# -ne 1 ]
then
	echo "Flasheaste banda"
else
	for usuarios in $(cat /etc/passwd | cut -d ":" -f 1)
	do
		var=$(sudo find /home -user $usuarios -name "*$1" |wc -l )
 #Busca los archivos con extencion que llega en $1 en sus carpetas 
		echo $usuarios
		echo $var
		echo "$usuarios -|- $var" >> report.txt
	done
fi
