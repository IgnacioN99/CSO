#!/bin/bash
arreglo=(1 2 3 4 5 6)
inpar=0
for ((i=0; i<${#arreglo[*]};i++))
do
	par=`expr ${arreglo[$i]} % 2`
	if [ $par -ne 0 ]; then
		let inpar++	
	else
		echo ${arreglo[$i]}
	fi
done
echo $inpar
exit 0
