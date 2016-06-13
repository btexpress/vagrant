#!/bin/bash

# Update CentOS with any patches except the kernel
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screen

# Apache
yum install -y httpd httpd-devel httpd-tools
chkconfig --add httpd
chkconfig httpd on
service httpd stop

rm -rf /var/www/html
ln -s /vagrant /var/www/html

service httpd start

# PHP
yum install -y php php-cli php-common php-devel php-mysql

# MySQL
yum install -y mysql mysql-server mysql-devel
chkconfig --add mysqld
chkconfig mysqld on

service mysqld start

mysql -u root -e "SHOW DATABASES";

# Download Starter Content
cd /vagrant
sudo -u vagrant wget -q https://github.csc.com/raw/wtooles/vagrant/master/files/index.html?token=AAACLQm3F_2mEr4jqtc5v6_uyp5tfKIQks5XZ-NdwA%3D%3D
sudo -u vagrant wget -q https://github.csc.com/raw/wtooles/vagrant/master/files/info.php?token=AAACLboafoLaCyjcwUbvL0TDmP2Dn_EXks5XZ-Q5wA%3D%3D

service httpd restart
