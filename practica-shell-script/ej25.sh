
#!/bin/bash
if [ $# -eq 0 ]; then
	echo "mal pasaje de parametros"
	exit 1
else
	usuarios=`cat /etc/passwd | cut -d ":" -f 1,5| grep "users" | cut -d ":" -f1`
	n=0
	arreglo=()
	for i in $usuarios
	do
		arreglo[$n]=$i
		let n++
	done
	case $1 in
		"-b")
			if [ $2 -lt ${arreglo[*]} ]
			then
				echo ${arreglo[$2]}
			else
				echo "El elemento no existe"
			fi
		;;
		"-l")
			echo "long del arreglo = ${#arreglo[*]}"
		;;
		"-i")
			echo ${arreglo[*]}
		;;
	esac
fi
exit 0
