#!/bin/bash

echo '#### Actualizar paquetes y mejoramiento ####'
sudo apt update -y

echo '#### Instalacion del haproxy ####'
sudo apt-get install haproxy -y

echo '#### Habilitamos haproxy activo ####'
sudo systemctl enable haproxy

echo '#### Configurando el archivo haproxy.cfg ####'
sudo mv /vagrant/haproxy.cfg /etc/haproxy/haproxy.cfg

echo '#### Iniciando el servicio haproxy ####'
sudo systemctl start haproxy

echo '#### Restaurar el servicio haproxy ####'
sudo systemctl restart haproxy