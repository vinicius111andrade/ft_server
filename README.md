# ft_server_dev  


### What is a dockerfile?  

A dockerfile is a document that has instructions to create a docker image, the image is create through docker build. It automates docker image creation.  

### How to build an image from a Dockerfile  

docker build -t [img name] [path to folder that has Dockerfile]  

ex: docker build -t img_test .  
. is the current folder  

### How to run container from image  

docker create -> creates a container but does not start it  
docker run -> creates and starts container in one operation  

### How to start, stop, restart container
docker start  
docker stop  
docker restart  

### How to attach stdin, stdout, stderr from container to your terminal  
docker attach  

### How to run a image and access the cmd line of the container  

linux_user: docker run -it [image id] /bin/bash  
root@[image id]: [now here you can insert your commands]  
