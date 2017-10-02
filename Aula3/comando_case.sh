#!/bin/bash

#Comando case
#Sintaxe
#
#case <variável> in
#valor1)
#	comandos 1;;
#
#valor2)
#	comandos 2;;
#
#valor3) | valor4)
#	comandos 3 e 4;;
#
#*)
#	comandos-padrão;;
#esac
#
#Exemplo:

echo "Em que local você está agora [quarto/cozinha/sala/banheiro/lavanderia]?"
read local

case $local in
	quarto)
		echo você está no quarto!;;
	
	cozinha)
		echo você está na cozinha!;;

	sala)
		echo você está na sala!;;

	banheiro | lavanderia)
		echo você está no banheiro ou lavanderia!;;
	
	*)
		echo Você não está dentro de casa!;;
esac

