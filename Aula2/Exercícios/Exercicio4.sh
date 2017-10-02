#!/bin/bash

echo "Em que período você estuda [M/V/N]? "
read periodo

if [ $periodo == "M" ]
then
	echo Bom-Dia!

elif [ $periodo == "V" ]
then
	echo Boa-Tarde!

elif [ $periodo == "N" ]
then
	echo Boa-Noite!

else
	echo Período inválido!
fi

