#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

sudo apt-get install apache2 -y
sudo systemctl status apache2

sudo git clone https://github.com/denilsonbonatti/mundo-invertido.git 
cd mundo-invertido
sudo cp * -R /var/www/html