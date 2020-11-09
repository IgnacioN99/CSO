#!/bin/bash
for archivo in $(ls $pwd)
do
	echo $archivo | tr "[a-z][A-Z]" "[A-Z][a-z]" | tr -d "a""A"
done
