#!/bin/bash

yum -y install httpd
echo "Hello from $(curl -s http://169.254.169.254/latest/metadata/instance-id)" >> /var/www/html/index.html
service httpd start
chkconfig httpd on