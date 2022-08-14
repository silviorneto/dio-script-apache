#!/bin/bash

echo "> Atualizando o servidor"
apt update && sudo apt upgrade -y

echo "> Instalando o Apache"
apt install apache2 -y

echo "> Instalando o Unzip"
apt install unzip -y

echo "> Baixando a aplicação web"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "> Descompactando o arquivo main.zip"
unzip main.zip

echo "> Atualizando a aplicação"
cd linux-site-dio-main
cp -R * /var/www/html

echo "> Finalizando o script"

echo "Acesse a aplicação através do ip da máquina virtual no seu browser"


