#	getting base image debian buster
FROM debian:buster

#	this is just a label, you can give it whatever names you want
LABEL author="Vinicius Andrade" id="vde-melo" email="vinicius111andrade@gmail.com"

#	setting enviroment variables
ARG var_name_ex1="str"
ARG var_name_ex2=/path
ARG var_name_ex3=https://google.com

#	Download package information from all configured sources. It is a recommended step.
RUN sudo apt-get update

#	Nginx is the webserver we will use. It will run 3 services, WordPress, phpMyAdmin and MySQL.
#		WordPress is a content management system (CMS) written in PHP and paired with a MySQL database. We will use it to make our webpage.
#		phpMyAdmin is a administration tool for MySQL.
#		MySQL is a relational database management system (RDBMS).

#	Install Nginx.
RUN sudo apt-get install nginx