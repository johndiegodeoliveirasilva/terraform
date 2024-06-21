#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install apache2 -y

echo "Clonando o repositório..."
git clone https://github.com/denilsonbonatti/mundo-invertido.git
cd mundo-invertido

echo "Copiando os arquivos para o diretório /var/www/html..."
sudo cp * -R /var/www/html/
# mount 
sudo systemctl status apache2 | cat