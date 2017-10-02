#!/bin/bash

#Pedir 3 valores ao usuário e dizer qual é o maior

echo Entre com o valor 1: 
read v1

echo Entre com o valor 2:
read v2

echo Entre com o valor 3:
read v3


if [ $v1 -eq $v2 ]
then
	if [ $v1 -eq $v3 ]	
	then
		echo $v1
		
	elif [ $v1 -gt $v3 ] # $v1 > $v2
	then
		echo $v1

	else #[ $v1 -lt $v3 ]
		echo $v3
	fi


elif [ $v1 -eq $v3 ]
then
	if [ $v1 -eq $v2 ]
	then
		echo $v1

	elif [ $v1 -gt $v2 ]
	then
		echo $v1

	else #[ $v1 -lt $v2 ] 
		echo $v2
	fi


elif [ $v2 -eq $v3 ]
then				  #[ $v2 -eq $v3 ]
	if [ $v2 -eq $v1 ]
	then
		echo $v1
	
	elif [ $v2 -gt $v1 ]
	then
		echo $v2

	else
		echo $v1
	fi

elif [ $v1 -gt $v3 ]
then
	echo $v1


else
echo $v3
	fi	
