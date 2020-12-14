#!/bin/bash

read -p "INFORME O USUARIO: " user
echo -e "\nBACKUPS QUE ${user} POSSUI: "
ls ~/backups/$user

read -p "INFORME O IP DE DESTINO: " ip
read -p "INFORME O ARQUIVO QUE QUEIRA RESTAURAR: " arq
read -p "INFORME O DIRETORIO QUE ESSE ARQUIVO SERÁ RESTAURADO: " dir


echo -e "~/backups/${user}/${arq}" >> historico.txt
sudo rsync -aAXv ~/backups/${user}/${arq} ${user}@${ip}:${dir}
