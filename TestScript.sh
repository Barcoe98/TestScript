#!/bin/bash
yum update -y
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
. ~/.nvm/nvm.sh								          
nvm install 10.13.0				                          	                                                    
sudo yum -y install git		
git clone https://bitbucket.org/edeleastar/donation-web-07.git 
cd donation-web-07						  		         
npm install --no-audit
npm install pm2 -g
pm2 start index.js
pm2 save
sudo amazon-linux-extras install nginx1 -y
sudo chkconfig nginx on
