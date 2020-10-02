#!/bin/bash

# Go to root directory.
cd /root/

# Create localhost folder to place our files.
mkdir /var/www/localhost

# Grant access permissions. chown changes owner, chmod changes permissions.
# www-data is the user the web server will use to modify the files
chown -R www-data /var/www/*
chmod -R 755 /var/www/*

# Setup SSL key and certificate (C = Country, ST = State, L = Location, O = Organization, CN = Name)
openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj '/C=BR/ST=SP/L=SP/O=42SP/CN=vde-melo' \
	-keyout /etc/ssl/certs/localhost.key -out /etc/ssl/certs/localhost.crt

# Setup MySQL database, username "root", no password.
service mysql start
mysql -u root -p -e "CREATE DATABASE wordpress DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;";
mysqladmin -u root -p password ""
service mysql stop

# Download phpMyAdmin files from official website
wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz

# Unpack files, remove compacted file.
tar -xf phpMyAdmin-5.0.2-english.tar.gz 
rm -f phpMyAdmin-5.0.2-english.tar.gz

# Move phpMyAdmin to localhost folder.
mv phpMyAdmin-5.0.2-english /var/www/localhost/phpmyadmin

# Move php configuration file to localhost folder.
mv ./config.inc.php /var/www/localhost/phpmyadmin

# Download Wordpress files from official website.
wget https://wordpress.org/latest.tar.gz

# Unpack files, remove compacted file.
tar -xf latest.tar.gz
rm -f latest.tar.gz

# Move Wordpress files to localhost folder.
mv wordpress /var/www/localhost/wordpress

# Copy Wordpress config file to localhost folder.
cp ./wp-config.php /var/www/localhost/wordpress

# Move PHP info file to localhost folder.
mv info.php /var/www/localhost

# Override NGINX config file with my own.
mv nginx.conf /etc/nginx/sites-available/default
