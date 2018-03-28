#!/bin/bash -ex

sudo apt-get update -qq
sudo apt-get upgrade -y

# mkswap
sudo dd if=/dev/zero of=/var/swap bs=1k count=1024k
sudo mkswap /var/swap
sudo swapon /var/swap
sudo bash -c "echo '/var/swap swap swap default 0 0' >> /etc/fstab"

# nginx
sudo apt-get install -y nginx
sudo ufw allow 'Nginx Full'

# mysql
echo "mysql-server mysql-server/root_password password rootpw" | sudo debconf-set-selections
echo "mysql-server mysql-server/root_password_again password rootpw" | sudo debconf-set-selections
sudo apt-get install -y mysql-server

# node 6
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash
sudo apt-get install -y nodejs

# ghost-cli
sudo npm i -g ghost-cli

# ghost
sudo mkdir -p /var/www/ghost
sudo chown ${USER}:${USER} /var/www/ghost
sudo chmod 775 /var/www/ghost
# cd /var/www/ghost
# ghost install
