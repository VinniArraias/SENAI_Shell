#!/bin/bash

var1=9
var2=2
#var=$[$var1 / $var2 | bc] 

#Se o resultado de um cálculo NÃO for um número INTEIRO
#Utilizar o comando bc para exibir o número quebrado
#scale é o tanto de casas que serão mostradas após a vírgula

#variavel=`echo "scale=2; variavel / variavel" | bc

var=`echo "scale=2; $var1 / $var2" | bc`

echo $var
