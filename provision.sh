#!/bin/bash

# Nome da máquina
myhostname="webserver"

# Instalar o servidor web nginx
sudo apt update
sudo apt install -y nginx

# Definir o nome da máquina
sudo hostnamectl hostname ${myhostname}

# Implantar o site estático
sudo cp /vagrant_data/cep.html /var/www/html
