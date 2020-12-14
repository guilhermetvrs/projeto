#!/bin/bash

read -p "informe o nome do usuario: "
echo -e "DIGITE 1 PARA VER A QUANTIDADE DE BACKUPS FEITOS PELO USUARIO\nDIGITE 2 PARA VISUALIZAR A LISTA DE BACKUPS RESTAURADOS NO SERVIDOR\nDIGITE 0 PARA RETORNAR AO MENU"
read -p " " opcao
case $opcao in

1)
	echo "quantidade de backup feitos pelo usuario: "
	echo $(ls ~/backups/${user}) >> backups.txt
	cat backups.txt | wc -w
	rm backups.txt
	;;

2)
	echo "lista de backups restaurados no servidor: "; echo $(cat historico.txt)
	;;

0)
	source menu.sh
	;;

esac
