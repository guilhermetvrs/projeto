#!/bin/bash

#aux é a o numero desejado pelo  usuario
echo -e  'digite :\n1 para fazer o backup\n2 para restaurar algum backup\n3 para agendar algum backup\n4 para exibir a lista de backups salvos.\n0 para fechar o menu'
read -p " " aux

case $aux in
1)
	source backup.sh;;
2)
	source lista.sh
	source restaura.sh;;
3)
	source agendar.sh;;
4)
	source lista.sh;;
0)
	exit 0;;
esac

source menu.sh
#restaurar backups
#agendar backups
#exibir os backups configurados

