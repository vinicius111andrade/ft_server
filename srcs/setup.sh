# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    setup.sh                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vde-melo <vde-melo@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/09/09 17:24:52 by vde-melo          #+#    #+#              #
#    Updated: 2020/09/09 20:36:47 by vde-melo         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#	The line above defines the interpreter that I wish to run the script with.\

#	We will install and config
#		Nginx web server
#		SSL Certificate
#		phpMyAdmin to admin the mysql database over the web
#		MySQL our RDBMS, relational database management system
#		WordPress our CMS, content management system

#	Create ft_server's directory
SERVER_DIR=/var/www/localhost
mkdir $SERVER_DIR
#	cd to srcs files directory
cd /tmp/config


#	Nginx server config
#		Nginx directory
NGINX_DIR=/etc/nginx
#		Move Nginx config file to correct directory
mv nginx.conf $NGINX_DIR/sites-available
#		Remove example config file
rm $NGINX_DIR/sites-available/default
#		Enable site by creating symlink to NGINX's sites-enabled folder
#			A symlink, or symbolic link, is a file that acts like a shortcut
#			to another file. We are creating a link in the sites-enabled folder
#			to the nginx.conf file that is in the sites-available folder.
ln -s $NGINX_DIR/sites-available/nginx.conf $NGINX_DIR/sites-enabled


#	SSL Certificate config
#		rsa:2048 - generates a 2048-bit RSA key
#		C=country ST=state L=location O=organization OU= organization unit CN=name
#		-keyout indicates the domain you're generating a key for
#		-out specifies the name of the file your CSR will be saved as
nssl req -x509 -nodes -days 365 -newkey rsa:2048 \
	-subj '/C=BR/ST=SP/L=SP/O=42/OU=42sp/CN=vde-melo' \
	-keyout /etc/ssl/certs/localhost.key \
	-out /etc/ssl/certs/localhost.creating


#	phpMyAdmin setup and config
#		phpMyAdmin directory
PHPMYADMIN_DIR=$SERVER_DIR/phpmyadmin
#		Extract and move folder to correct dir
#		wget https://files.phpmyadmin.net/phpMyAdmin/5.0.2/phpMyAdmin-5.0.2-english.tar.gz
tar -xf phpMyAdmin-5.0.2-english.tar.gz
rm -rf phpMyAdmin-5.0.2-english.tar.gz
mv phpMyAdmin-5.0.2-english $SERVER_DIR/phpmyadmin
cp config.inc.php $SERVER_DIR/phpmyadmin/config.inc.php
#		Change owner comand
chown -R www-data:www-data $SERVER_DIR/phpmyadmin


#	MySQL database setup and config (without password)
USER=user42
service mysql start
#		-e option executes a command
mysql -e "CREATE USER '$USER' IDENTIFIED BY '$USER';"
mysql -e "CREATE DATABASE phpmyadmin;"
mysql -e "CREATE DATABASE wordpress;"
mysql -e "GRANT ALL PRIVILEGES ON *.* TO '$USER';"
#		< gives input to command, it is a shell redirection operator.
#		ex: command < file.txt
#			will execute the command on the contents of file.txt
mysql wordpress < wordpress.sql

#	Wordpress setup and config
#		Wordpress directoy
WORDPRESS_DIR=$SERVER_DIR/wordpress
#		Extract and move folder to correct directory
tar -xf wordpress-5.3.2-pt_BR.tar.gz
rm -rf wordpress-5.3.2-pt_BR.tar.gz
mv wp-config.php wordpress/wp-config.php
mv wordpress $SERVER_DIR