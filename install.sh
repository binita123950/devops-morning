#!/bin/bash

echo "Demo script"
apt update
apt install -y apache2

if [ -f /var/run/apache2/apache2.pid ]	
; then 
echo "Apache2 is running"
fi
sudo systemctl start apache2
sudo systemctl enable apache2
sudo systemctl status apache2
# Put some dummy echo message
echo "hello DevOps" > /var/www/html/index.html

# User add ram
sudo useradd -m -d /var/ram ram
