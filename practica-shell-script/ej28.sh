#!/bin/bash
if [ $# -eq 1 ];then
	if [ -e $1 ];then
		cant=0
		for i in $(ls -l $1)
		do
			if [ -f $1$i ];then
				if [ -w $1$i ] && [ -r $1$i ];then
					let cant++
				fi
			fi
		done
		echo $cant
		exit 0
	else
		exit 4
	fi
else
	echo "Cantidad de parametros incorrecta"
	exit 2
fi
