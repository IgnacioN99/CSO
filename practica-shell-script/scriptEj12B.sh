#!/bin/bash
echo $1
echo $2
echo "suma `expr $1 + $2`"
echo "mult `expr $1 \* $2`"
echo "resta"
expr $1 - $2
if [ "$1" -gt "$2" ]; then
	echo " $1 es mayor que $2 "
else
	echo " $2 es mayor que $1 "
fi
