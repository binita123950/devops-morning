#!/bin/bash

echo "Demo script"
apt update
status_code=$(dpkg -l | grep apache2)
if [ status_code -eq 0 ];
then 
	echo "The package apache2 is already installed"
else
	echo "apache2 is not installed, installing it..."
	dpkg -l | grep apache2
fi	
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
# Check the disk usage status
df -h

# current date
 date
