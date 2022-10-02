#!/bin/bash

echo "Atualizando Servidor"

apt-get update -y
apt-get upgrade -y

echo "Instalando o Apache"

apt-get install apache2 -y

echo "Instalando Unzip"

apt-get install unzip -y

echo "Baixando aplicação para pasta /tmp"

wget -c -P /tmp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Unzip e Transferência do arquivo para o apache"

cd /tmp
unzip /tmp/main.zip
cp -R /tmp/linux-site-dio-main/* /var/www/html

echo "Arquivos Copiados:"

ls -l /var/www/html/


echo "FIM"