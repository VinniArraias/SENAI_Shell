#!/bin/bash

#Pedir ao usuário que entre com 2 valores e dizer qual é o maior valor

echo Entre com o valor 1: 
read v1

echo Entre com o valor 2:
read v2

if [ $v1 -eq  $v2 ]
then
	echo Os valores são iguais.

elif [ $v1 -gt $v2 ]
then
	echo O valor 1 é maior que o valor 2.

else
	echo O valor 1 é menor que o valor 2. 
fi

