# ft_server
This is a 42sp project. It's dockerfile with other configuration archives to make a web server running in a docker container. It uses Nginx, MySQL, OpenSSL, PHPMyAdmin and WordPress to make it all work.

### How to run and test

*Requirements*  
  You need docker installed.

1. Make the ports 80 and 443 available.  
  **service nginx stop** - To make sure nginx is off.  
  **docker stop $(docker ps -aq)** - To make sure all containers are off.  
2. Build image from docker file.  
  **cd path_to_dockerfile_folder**  
  **docker build -t test_img ./**  
3. Run container from created image.  
  **docker run --name test_cont -it -p 80:80 -p 443:443 test_img**  
4. The container will start and you can use bash inside it.  
  You can turn autoindex on and off using **bash root/autoindex.sh**  
5. Accessing localhost.  
  You can access the webpage by typing *localhost* into your web browser.  

### What is a dockerfile?

A dockerfile is a document that has instructions to create a docker image, with a docker image we can run a container and execute services as desired. 

### How to build an image from a Dockerfile
docker build -t [img name] [path to folder that has Dockerfile]  

ex: docker build -t test ./  

### How to run container from image
**docker create** - Creates a container but does not start it.  
**docker run** - Creates and starts container in one operation.  

### How to run a image and access the cmd line of the container
linux_user: docker run -it [image id] /bin/bash  
root@[image id]: [now here you can insert your commands]  

### Other useful commands
**docker container ps -a** Lists all containers.  
**docker image** Lists all images.  
**docker rm container_name** - Removes container.  
**docker rm $(docker ps -aq)** - Removes all existing containers.  
**docker rmi image_name** - Removes image.  
**docker rmi $(docker images -q)** - Removes all existing images.  
**docker start/stop/restart container_name** - Turns container on or off or restarts.  
**docker attach container_name** - Enters container.  
  
While inside the container:  
**CTRL + D** - Exits and stops the container.  
**CTRL + P, CTRL + Q** - Exits container and keeps it running.  

### Useful links  
  
[Docker Documentation](https://docs.docker.com/reference/ )  
[Nginx Documentation](https://docs.nginx.com/nginx/admin-guide/installing-nginx/installing-nginx-open-source/?_ga=2.203137169.148315847.1594301020-870972343.1594301020)  
[OpenSSL](https://www.openssl.org/)  
[MySQL](https://www.mysql.com/) or [MariaDB](https://mariadb.org/)  
[PHPMyAdmin](https://www.phpmyadmin.net/)  
[WordPress](https://wordpress.org/)  
