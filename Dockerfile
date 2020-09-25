#	Getting base debian buster image from Dockerhub
FROM debian:buster

#	Run installation non-interactively (faster)
ARG DEBIAN_FRONTEND=noninteractive

#	This is just a label, you can give it whatever names you want
LABEL author="Vinicius Andrade" id="vde-melo" email="vinicius111andrade@gmail.com"

#	Setting enviroment variables
#	Examples
#ARG var_name_ex1="str"
#ARG var_name_ex2=/path
#ARG var_name_ex3=https://google.com

#	Download package information from all configured sources. It is a recommended step.
RUN apt-get update
#	Downloads latest patches
RUN apt-get upgrade

#	Nginx is the webserver we will use. It will run 3 services, WordPress, phpMyAdmin and MySQL.
#		WordPress is a content management system (CMS) written in PHP and paired with a MySQL database. We will use it to make our webpage.
#		phpMyAdmin is a administration tool for MySQL.
#		MySQL is a relational database management system (RDBMS).

#	Install basic tools. -q makes it quiet. -y answers yes automatically.
#	Won't install because not needed
#RUN apt-get install -qy git
#RUN apt-get install -qy locales
#RUN apt-get install -qy nano
#RUN apt-get install -qy wget
#RUN apt-get install -qy curl

#	Install Nginx, OpenSSL, MariaDB.
RUN apt-get install -qy nginx openssl mariadb-server
#	Instal PHP 7.3 and common PHP extensions
RUN apt-get install -qy php7.3 php-fpm php-mysql \
	php-common php-cli php-mbstring

#	Copy srcs files to inside the container
COPY srcs /tmp/

# Run setup script
RUN bash /tmp/setup.sh

# Start services
ENTRYPOINT bash /tmp/services.sh