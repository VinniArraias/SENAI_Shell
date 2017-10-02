#!/bin/bash

#IMC

echo Entre com o seu peso
read PESO

echo Entre com a sua altura
read ALTURA

#Algorítimo
IMC=`bc << EOF
scale=2

v1=$PESO
v2=$ALTURA * $ALTURA

v1 / v2

EOF
`
echo Seu IMC é $IMC

