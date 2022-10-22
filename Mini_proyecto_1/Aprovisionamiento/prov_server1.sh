#!/bin/bash

echo 'Descargamos el archivo de instalacion consul'
sudo wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg

echo 'Instalacion del consul'
sudo apt update && sudo apt install consul -y

echo 'Verificamos la version de consul'
sudo consul -v

echo 'archivo de la aplicacion'
sudo git clone https://github.com/omondragon/consulService

echo 'Instalando node js'
sudo apt install nodejs -y

echo 'Instalando npm'
sudo apt install npm -y

echo 'Accediendo al directorio'
cd consulService/app

echo 'Instalando con npm el consul'
sudo npm install consul -y

echo 'Instalando con npm servicio express'
sudo npm install express -y


echo 'Iniciando el agente consul en cluster'
#sudo consul agent -ui -server -bootstrap-expect=1 -client=0.0.0.0 \-data-dir=\tmp\consul -node=agent-one -bind=192.168.100.3 \-enable-script-checks=true -config-dir=/etc/consul.d
#sudo consul agent -data-dir=\tmp\consul -node=agent-two -bind=192.168.100.4 \-enable-script-checks=true -config-dir=/etc/consul.d
#sudo consul agent -data-dir=\tmp\consul -node=agent-tree -bind=192.168.100.5 \-enable-script-checks=true -config-dir=/etc/consul.d

echo 'Verificando los miembros del cluster'
#sudo consul members

echo 'Agregando servidores al cluster'
#sudo consul join 192.168.100.4 192.168.100.5

echo 'Verificando los miembros del cluster'
#sudo consul members




