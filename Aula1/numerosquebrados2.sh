#!/bin/bash

#Redirecionamento in line: É utilizado para criar todas as fórmulas/cálculos matemáticos e, em seguida, redirecionar dentro para a calculadora bc, depois redireicona tudo para uma única variável

#Exercício: dar o valor da multiplicação de (var1 * var2) e somar com a soma de (var3 + var1)

var1=6
var2=5
var3=4

#Essa varíavel vai dar o valor total

vart=`bc << EOF
scale=2
a1=($var1 * $var2)
b1=($var3 + $var1)
a1 + b1
#Essas variáveis a1 e b1 não são acessíveis fora do bc; apenas são acessíveis dentro
EOF
`

echo $vart

