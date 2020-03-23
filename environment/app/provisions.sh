#!/bin/bash

sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install nginx -y
sudo unlink /etc/nginx/sites-enabled/default

sudo apt-get install git
curl -sL https://deb.nodesource.com/setup_6.x | bash -

sudo apt-get install -y nodejs
sudo apt install build-essential


curl -L https://npmjs.org/install.sh | sudo sh

sudo npm install pm2@latest -g


 sudo mv /home/ubuntu/app/reverse-proxy.conf /etc/nginx/sites-available/

 sudo ln -s /etc/nginx/sites-available/reverse-proxy.conf /etc/nginx/sites-enabled/reverse-proxy.conf

 sudo service nginx restart


sudo apt-get install git -y
