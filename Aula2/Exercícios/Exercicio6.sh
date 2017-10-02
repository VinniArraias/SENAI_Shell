#!/bin/bash

echo "Entre com o tipo de combustível [A/G]: "
read tipo

echo Entre com a qunatidade de litros: 
read qntd


if [ $tipo == "A" ]
then

	if [ $qntd -eq 20 ]
	then
		precoaeq=`bc << EOF
			v1=$qntd
			va=0.97 * 1.9
			v1 * va
			EOF
			`
		
		echo Total a pagar: R$ $precoaeq

	elif [ $qntd -le 20 ]	
	then
		precoale=`bc << EOF
			v1=20 - $qntd
			va=0.97 * 1.9
			v1 * va
			EOF
			`

		echo Total a pagar: R$ $precoale

	else
		precoage=`bc << EOF
			v1=$qntd - 20
			va=1.9 * 0.95
			v1 * va
			EOF
			`
			
		echo Total a pagar: R$ $precoage
		fi


elif [ $tipo == "G" ]
then
	
	if [ $qntd -eq 20 ]
	then

	precogeq=`bc << EOF
		v1=$qntd
		va=0.96 * 2.5
		v1 * va
		EOF
		`

		echo Total a pagar: R$ $precogeq


	elif [  $qntd -le 20 ]
	then

	precogle=`bc << EOF
		v1=20 - $qntd
		va = 0.96 * 2.5
		v1 * va
		EOF
		`
	
		echo Total a pagar: R$ $precogle
	
	else
		precogge=`bc << EOF
			v1=$qntd - 20
			va=0.94 * 2.5
			v1 * va
			EOF
			`

		echo Total a pagar: R$ $precogge
		fi

else
	echo Combustível inválido.

fi
