#!/bin/bash
sudo su
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
echo “Message from $(hostname -f) Please wait while the Website is setting up” > /var/www/html/index.html
cd /var/www/html/
yum install git -y
git clone https://github.com/RayanAhmed2000/Website-to-deploy.git
cd Website-to-deploy/
mv /var/www/html/Website-to-deploy/index.html /var/www/html/
mv /var/www/html/Website-to-deploy/style.css /var/www/html/
mv /var/www/html/Website-to-deploy/Rumigate.jpeg /var/www/html/

