#!/bin/bash
suma(){
	echo " $1+$2 = $(($1+$2))"
}
resta(){
	echo " $1-$2 = $(($1-$2)) "
}
mult(){
	echo " $1*$2 = $(($1\*$2)) "
}
div(){
	echo " $1/$2 = $(($1/$2))"
}
case $2 in
	"+"
	suma $1 $3
	;;
