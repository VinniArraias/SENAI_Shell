#!/bin/bash

echo Entre com o peso em Kg de Morango
read px

echo Entre com o peso em Kg de maçã
read py

somap=`bc << EOF
	v1=($px+$py)
	v1
	EOF
	`

valortotal=`bc << EOF
	v1=0
	v1
	EOF
	`


if [ px -le 5 ]
then
	valorlepx=`bc << EOF
	scale=2
	v1=($px * 2.5)
	v1
	EOF
	`
	let valortotal=$valortotal + $valorlepx

else
	valorgepx=`bc << EOF
	scale=2
	v1=$px - 5
	v1 * 2.2
	EOF
	`
	let valortotal=$($valortotal + $valorgepx)
fi

	echo $valortotal		
