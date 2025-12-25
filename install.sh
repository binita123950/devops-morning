#!/bin/bash

echo "Demo script"
apt update
apt install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2

echo "hello DevOps" > /var/www/html/index.html
