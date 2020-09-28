# ft_server_dev


### What is a dockerfile?

A dockerfile is a document that has instructions to create a docker image, with a docker image we can run a container and execute services as desired. 

### How to build an image from a Dockerfile
docker build -t [img name] [path to folder that has Dockerfile]  

ex: docker build -t img_test .  
. is the current folder  

### How to run container from image
*docker create* - Creates a container but does not start it.  
*docker run* - Creates and starts container in one operation.  

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
