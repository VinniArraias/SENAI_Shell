#!/bin/bash

usuario="Vinicius"
senha="181210f8f9c779c26da1d9b2075bde0127302ee0e3fca38c9a83f5b1dd8e5d3b"

criar(){

	read -p "Qual o nome do usuário que deseja criar?" CRIARUSUARIO
	useradd -m -s /etc/tcsh $CRIARUSUARIO
	passwd $CRIARUSUARIO	
	
	CONT=$? #Se o último erro de>
	passwd $CRIARUSUARIO
	CONT=($CONT + $?)

	if [[ $CONT == 0 ]]; then

		read -p "Usuário digitado com sucesso"

	else
	
		read -p "Ocorrou falha na criação do usuário"
	fi

	menu

}


remover(){

	read -p "Qual o nome do usuário que deseja remover?" REMOVERUSUARIO
	userdel -rf $REMOVERUSUARIO
	
	CONT=$?

	if [[ $CONT == 0 ]]; then
	
		read -p "Usuario removido com sucesso..."
	else
		read -p "Ocorreu falha na remoção do usuário"
	fi

	menu

}



opcao(){

case $1 in
	"1"|"criar") read -p "criar" ; menu ;;
	"2"|"remover") read -p "remover" ; menu ;;
	"3"|"Sair") exit 0 ;;
	*) read -p "Opção inválida. \
		Pressione [enter] para voltar ao menu." ; 
	menu ;;
	esac	
}


menu(){

	echo "1) Criar usuário"	
	echo "2) Remover usuário"
	echo "3) Sair"
	read -p "Digite uma das opções: " OPCOES
	opcao $OPCOES #VAR

}

logar(){
	clear
	echo

	read -p "Login: " login
	read -s -p "Senha: " passw
passw=$(echo $passw | sha256sum | cut -d" " -f1)

[ $login == $usuario ] && [ $passw == $senha ] && menu || logar

}

logar
