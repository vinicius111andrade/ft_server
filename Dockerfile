#	Getting base debian buster image from Dockerhub
FROM debian:buster

#	Run installation non-interactively (faster)
ARG DEBIAN_FRONTEND=noninteractive

#	This is just a label, you can give it whatever names you want
LABEL author="Vinicius Andrade" id="vde-melo"

#	Setting enviroment variables
#		Variables Configuration Examples
#ARG dir_path=/path/path
#ARG str="abcd"
#ARG url=https...

#	Download package information from all configured sources. It is a recommended step.
RUN apt-get -y update
#	Downloads latest patches
RUN apt-get -y upgrade

#	Nginx is the webserver we will use. It will run 3 services, WordPress, phpMyAdmin and MySQL.
#		WordPress is a content management system (CMS) written in PHP and paired with a MySQL database. We will use it to make our webpage.
#		phpMyAdmin is a administration tool for MySQL.
#		MySQL is a relational database management system (RDBMS).

#	Install basic tools. -q makes it quiet. -y answers yes automatically.
RUN apt-get install -qy wget

#	Install Nginx, OpenSSL, MySQL.
RUN apt-get install -qy nginx openssl mariadb-server
#	Instal PHP 7.3 and common PHP extensions
RUN apt-get install -qy php7.3 php-fpm php-mysql php-cli php-mbstring

# Copy source files to the root of the container.
COPY srcs /root/

# Server setup.
RUN bash /root/setup.sh

# Expose network ports that are going to be used.
EXPOSE 80/tcp
EXPOSE 80/udp

EXPOSE 443/tcp
EXPOSE 443/udp

# Start services.
ENTRYPOINT bash /root/start.sh

# Keeps container running
CMD tail -f /dev/null