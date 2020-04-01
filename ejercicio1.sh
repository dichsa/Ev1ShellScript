#!/bin/bash

read -p "Introduce el nombre de usuario" v1

maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
numuser=0
while [ $numlinea -le $maxlineas ]; do
	linea=`cat usuarios.txt | head -$numlinea | tail -1`
	user=`echo $linea | awk '{print $1}'`
if [ $v1 = $user ]; then
	numuser=$((numuser+1))
fi

numlinea=$((numlinea+1));
done
if [ $numuser = "0" ]; then
	echo "No se ha logueado";
else
	echo "$numuser";
fi
