#!/bin/bash

read -p "Escribe el nombre del usuario" v1

maxlineas=`cat usuarios.txt | wc -l`
numlinea=1
while [ $numlinea -le $maxlineas ]; do
	linea=`cat usuarios.txt | head -$numlinea | tail -1`
	dia=`echo $linea | awk '{print $2}'
	mes=`echo $linea | awk '{print $3}'



