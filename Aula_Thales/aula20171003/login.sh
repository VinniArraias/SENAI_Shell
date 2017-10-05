#!/bin/bash
clear

usuario="Vinicius"
senha="0ed5a4f0a1bed1b93113d77361b90b202cf85985e4f9d59ba4ff404a0100dc11"
#senha="181210f8f9c779c26da1d9b2075bde0127302ee0e3fca38c9a83f5b1dd8e5d3b"


CRIAR(){

	#read -p "Criando usuário"


	#read -p "Digite o nome do usuário a ser criado: " CRIARUSER

	CRIARUSER=$(dialog			\
		    --stdout			\
		    --title "Criar usuário"	\
		    --inputbox "Digite o nome do usuário a ser criado: "	\
		    0 0)

	useradd -m -s /bin/tcsh $CRIARUSER #-m Cria o home/
	
	passwd $CRIARUSER 
	
	
		
	
	#read -p "Criado com sucesso. Pressione [enter] para finalizar."

	dialog 										\
	--title "Criado"								\
	--msgbox "Usuário criado com sucesso.\nPressione [enter] para finalizar."	\
	0 0

	menu
}



REMOVER(){

	#read -p "Digite o nome do usuário a ser removido: " REMOVERUSER
	
	REMOVERUSER=$(dialog							\
			--stdout						\
			--title "Remover Usuário"				\
			--inputbox "Digite o nome do usuário a ser removido: "	\
			0 0)		
	userdel -r $REMOVERUSER

	#read -p "Usuário removido com sucesso. Pressione [enter] para finalizar."
	
	dialog										\
	--title "Removido"								\
	--msgbox "Usuário removido com sucesso.\nPressione [enter] para finalizar."	\
	0 0
	
	menu
}



menu(){
	clear

	#echo "1) Criar usuários"
	

	#echo "2) Remover usuários"


	#echo "3) Sair"

			

	#read -p "Escolha uma opção: " OPCAO 
	#-p vai chamar o prompt para a entrada de dados pelo usuário

	OPCAO=$( dialog					  \
			 --stdout			  \
			 --title "Opções" 		  \
			 --inputbox "1) Adicionar usuário\n2) Remover usuário\n3) Sair" \
			 0 0)	

	
	case $OPCAO in
	1) CRIAR ; menu ;;
	2) REMOVER ; menu ;;
	3) exit 0 ;;
	*) read -p "Opção inválida. \
	 Pressione [enter] para continuar." ; menu ;;
	esac

}

#passm=$(echo $PASS | sha256sum | cut -d" " -f1)


logar(){
	clear
	echo

	#read -p "Usuário: " USER

	USER=$( dialog					\
		--stdout				\
		--title "Usuário"			\
		--inputbox "Digite o nome do usuário: " \
		0 0)
		
	PASS=$( dialog					\
		--stdout				\
		--title "Senha"				\
		--passwordbox "Digite sua senha: " 	\
		0 0)
	

	#read -s -p "Senha: " PASS #Seta a variável PASS

	PASS=$(echo $PASS | sha256sum | cut -d" " -f1) #Passa o $PASS para o hash
[ $USER == $usuario ] && [ $PASS == $senha ] && menu || logar

}

logar
