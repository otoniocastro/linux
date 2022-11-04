#!/bin/bash

echo "Provisionando Servidor"
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
cd /var/www/html/
