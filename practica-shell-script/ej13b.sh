#!/bin/bash
select dato in "Listar" "Donde estoy?" "Quien esta?"
do
case $dato in
	"Listar")
		echo "$(ls)"
	;;	
	"Donde estoy?")
		"$(pwd)"
	;;
	"Quien esta?")
		"$(w)"
	;;
	*)
		exit 0
	esac
done
