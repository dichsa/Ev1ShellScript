#!/bin/bash

read -p "Escribe el nombre de un mes:" v1

maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
while [ $numlinea -le $maxlineas ]; do
	linea=`cat usuarios.txt | head -$numlinea | tail -1`
	dia=`echo $linea | awk '{print $2}'`
	mes=`echo $linea | awk '{print $3}'`

if [ $v1 = $mes ]; then 
	echo "$dia";
else
	echo "0";
fi

numlinea=$((numlinea+1));

done


