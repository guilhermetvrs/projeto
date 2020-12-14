#!/bin/bash

data=$(date '+%d-%m-%Y-%H-%M-%S')

read -p "Informe o nome de usuário da máquina que será feito o backup:" user
read -p "Informe o caminho absoluto do diretório que vai ser compactado:" dir
read -p "Digite o IP da máquina que será feita o backup:" ip

mkdir ~/backups/$user 2> /dev/null

rsync -avz ${user}@${ip}:${dir} /tmp/auxiliar

cd /tmp/auxiliar
tar -cvzf $data.tar.gz /tmp/auxiliar && mv /tmp/auxiliar/$data.tar.gz ~/backups/$user

