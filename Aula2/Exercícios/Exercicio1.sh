#!/bin/bash
#Testar igualdade entre strings

echo Entre com o seu nome
read nome

if [ $USER = $nome ]
then
	echo Olá, $nome!
else
	echo Você não é $USER!
fi

