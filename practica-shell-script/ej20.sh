#!/bin/bash
pila = {}

imprimir(){
	echo ${pila[*]}
}
length(){
	echo ${#pila[*]}
}
pop(){
	i=` expr ${#pila[*]} - 1 `
	echo ${pila[$i]}
	unset pila[$i]
}
push(){
	pila[${#pila[*]}]=$1
}
select option in push pop length imprimir salir
do
	case $option in
	"push")
		echo "Ingrese el valor a pushear"
		read dato
		push $dato
	;;
	"pop")
		pop
	;;
	"length")
		length
	;;
	"imprimir")
		imprimir
	;;
	"salir")
		exit 0
	;;
	esac
done
