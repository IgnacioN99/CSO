#!/bin/bash
arr1=(1 2 3 4)
arr2=(1 2 3 4)

for ((i=0;i<${#arr1[*]};i++));do
	suma=`expr ${arr1[$i]} + ${arr2[$i]}`
	echo "pos $i suma $suma"
done
exit 0
