#!/bin/bash

echo "Responda as questões abaixo [S/N]"
echo

cont=0
c=1

x="S"

echo Telefonou para a vítima?
read a

if [ $a == $x ]
then
	let cont=$cont+1

		
fi

echo Esteve no local do crime?
read b

if [ $b == $x ]
then
	let cont=$cont+1
fi

echo Mora perto da vítima?
read c

if [ $c == $x ]
then
	let cont=$cont+1	
fi

echo Devia para a vítima?
read d

if [ $d == $x ]
then
	let cont=$cont+1
fi

echo Já trabalhou com a vítima?
read e

if [ $e == $x ]
then
	let cont=$cont+1
fi

echo $cont
