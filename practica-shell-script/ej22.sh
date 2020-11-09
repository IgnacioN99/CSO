#!/bin/bash
num=(10 3 5 7 9 3 5 4)
productoria(){
	res=1
	for ((i=0; i<${#num[*]};i++))
	do
		echo $i
		res=`expr ${num[$i]} \* $num`
	done
	echo $res
}
productoria
exit 0
