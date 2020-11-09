#!/bin/bash
arreglo=()
inicialiar(){
	arreglo=()
}
agregar_elem(){
	if [ $# -ne 1 ];then
		echo "ingrese un parametro"
		return 1
	fi
	arreglo=(${arreglo[*]} $1)
}
eliminar(){
	if [ $# -ne 1 ]; then
		echo "ingrese un parametro"
		return 1
	fi
	if [ $1 -ge ${#arreglo[*]} ]; then
		echo "Pos invalida"
		return 2
	fi
	unset arreglo[$1] #los indices no se reacomodan
	arreglo=(${arreglo[*]})
}
longitud(){
	echo ${#arreglo[*]}
}
imprimir(){
	echo ${arreglo[*]}
}
inicializar_con_valores(){
	if [ $# -ne 2 ]; then
		echo "cantidad incorrecta de parametros"
		return 1
	fi
	iniciar
	for ((i=0; i < $1; i++))
	do
		agregar_elem $2
	done
}
echo "seleccione una opcion"
select opciones in inciar agregar_elem eliminar_elem longitud imprimir inicializar_con_valores salir
do
	case $opciones in
		"iniciar")
			inicializar
		;;
		"agregar_elem")
			echo "Ingrese el valor a agregar"
			read num
			agregar_elem $num
		;;
		"eliminar_elem")
			echo "Ingrese la posicion que desea eliminar"
			read num
			eliminar $num
		;;
		"longitud")
			echo "array de longitud"
			longitud
		;;
		"imprimir")
			imprimir
		;;
		"inicializar_con_valores")
			echo "ingrese cuantos elementos quiere agregar y que valor"
			read elem valor
			inicializar_con_valores $elem $valor
		;;
		"salir")
			exit 0
		;;
	esac
done

