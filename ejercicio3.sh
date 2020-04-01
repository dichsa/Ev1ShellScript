#!/bin/bash

read -p "Escribe el dia" v1
read -p "Escribe el mes" v2

maxlineas=`cat usuarios.txt | wc -l`
numlinea=0
while [ $numlinea -le $maxlineas ]; do
	linea=`cat usuarios.txt | head -$numlinea | tail -1`
	dia=`echo $linea | awk '{print $2}'`
	mes=`echo $linea | awk '{print $3}'`
	user=`echo $linea | awk '{print $1}'` 

if [[ $dia = $v1 ]] && [[ $mes = $v2 ]]; then
	echo "$user"
fi

numlinea=$((numlinea+1));
done
