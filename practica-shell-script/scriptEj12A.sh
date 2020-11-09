#!/bin/bash
echo "Ingrese 2 numeros plis"
read nro1 nro2
echo "suma `expr $nro1 + $nro2`"
echo "mult `expr $nro1 \* $nro2`"
echo "resta"
expr $nro1 - $nro2
if [ "$nro1" -gt "$nro2" ]; then
	echo " $nro1 es mayor que $nro2 "
else
	echo " $nro2 es mayor que $nro1 "
fi
