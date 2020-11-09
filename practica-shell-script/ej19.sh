#!/bin/bash
select option in $(ls) salir
do
	case $option in
	"salir")
		exit 0
	;;
	*)
		bash $option
	;;
	esac
done

