#!/bin/bash
if [ $# -ne 0 ]; then
	noex=0
	for i in $*
	do
		if [ $(expr $i % 2) -ne 0 ];then
			echo oli
			arch=`$("$i")`
			echo $arch
			if [ -e $arch ];then
				if [ -f $arch ];
				then
					echo "$arch es un archivo"
				elif [ -d  $arch ];
				then
					echo "$($i) es un directorio"
				fi
			else
				let noex++
			fi
		fi
	done
	echo "Archivos no existentes $noex"
	exit 0
else
	echo "No pasaste nigun parametro"
	exit 1
fi
