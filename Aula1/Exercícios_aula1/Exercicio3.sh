#!/bin/bash

#Ler as 3 notas de 3 alunos e exibir a média

echo Entre com a nota do aluno 1: 
read nota1

echo Entre com a nota do aluno 2:
read nota2

echo Entre com a nota do aluno3:
read nota3


media=`bc << EOF
soma= ($nota1 + $nota2 + $nota3)

soma / 3
EOF
`

echo A média dos 3 alunos é $media
