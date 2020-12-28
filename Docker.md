# Docker and Docker Hub

## Docker Command Arguments

| Argument |                                                             Description                                                           |
|----------|-----------------------------------------------------------------------------------------------------------------------------------| 
|`-ti`     | **Terminal Interactive**. Example `docker run -ti ubuntu:latest bash`	                                                           |
|`-c`      | Run **bash** commands preceding `-c` argument and exit. Example `docker run -ti ubuntu bash -c "echo hello world; ls; echo bye;"` |
|`-d`      | **Detached Mode**. Start a container and leave it running in the background. Example `docker run -d -ti ubuntu bash`              |
|`--name`  | Give a name to the container instead of the system generated name. Example `docker run --name my-ubuntu-container -ti ubuntu bash`|
|`--rm`    | Remove a container when it exits. Example `docker run --rm -ti ubuntu sleep 5`                                                    |

**NOTE:** To Jump away from a container started in a non-detached mode, use the following key sequence <kbd>ctrl</kbd>+<kbd>p</kbd>, <kbd>ctrl</kbd>+<kbd>q</kbd>

## Docker Meta

|        Command                             |                        Description                        |
|--------------------------------------------|-----------------------------------------------------------| 
|`docker-machine ip default`				         | check your docker IP default, usually **192.168.99.102**	 |
|`docker-machine ip`                         | Find Docker Toolbox IP address, usually **192.168.99.102**|
|`docker version`                            | displays the docker version information                   |
|`docker info`                               | Display system-wide information                           |

## Docker Volumes

|        Command                      |     Description               |
|-------------------------------------|-------------------------------| 
|`docker volume ls`				            | list volumes                  |
|`docker volume ls -f dangling=true`	| list dangling volumes         |
|`docker volume rm [volume_name]`			| remove volume                 |
|`docker volume prune`	            	| remove all dangling volumes   |

## Docker Logging

|                                                Command                                            |                                  		Description                                  |
|---------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------|
|`docker logs [container_id]`			                            								| list container logs                                                           	 |
|`docker logs [container_id] --tail N`                               								| list container logs, **`--tail`** flag will show the last **N** lines of logs 	 |   
|`docker logs [container_id] --since YYYY-MM-DD`                     								| list container logs since a particular date                                   	 |
|`docker logs [container_id] --since YYYY-MM-DDTHH:MM:SS.000000000Z` 								| list container logs since a particular timestamp                              	 |
|`docker logs -f [container_id]`                                                                    | look at the logs of a container                                               	 |
|`docker inspect [container_id]`                                                                    | examine a container's metadata in Docker                                      	 |
|`docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' [container_id]`| Use --format to inspect specific fields from the returned container's metadata JSON| 

## Docker Stats

|                             Command                                |                                  Description                                  |
|--------------------------------------------------------------------|-------------------------------------------------------------------------------|
|`docker stats`							                             | Show CPU and memory usage of all running containers                 	         |
|`docker stats [container_name]`						             | Show CPU and memory usage of a particular running container                   |
|`docker stats [container1_name] [container2_name]`			         | Show CPU and memory usage of container1, container2                           |
|`docker top [container_name]`			                             | Show running processes in a container                                         |
|`docker system df`			                                         | Show storage usage                                                            |

## Docker Basic Queries

|              Command           |                         Description                                      |
|--------------------------------|--------------------------------------------------------------------------|
|`docker images`                 | take a look at the container images.                                     |
|`docker images -a`              | shows  every image, including intermediate image layers.                 |
|`docker images -f dangling=true`| list dangling images														                          |
|`docker image ls`               | take a look at the container images.                                     |
|`docker attach [container_name]`| connect to a detached container.                                         |
|`docker ps`                     | list all the running containers.                                         |
|`docker ps -l`                  | displays the last container to be exited                                 |
|`docker ps -a`                  | list all the containers, including the ones that have finished executing.|

## Docker Container State Change 

|                		      Command                 |                           Description                             |
|-------------------------------------------------|-------------------------------------------------------------------|
|`docker run [container_name]`      		          | run a container.                								                	|
|`docker run -p 8080:8080 [container_name]`	      | Run a container by mapping a port on docker to a port on localhost|
|`docker stop [container_id]`   			            | stop a container              								                    |
|`docker kill [container_name]`   			          | stop a container              								                    |
|`docker rm [container_name]`   			            | remove a container              								                    |
|`docker commit [container_id]`   			          | Create image from a stopped container              								|
|`docker tag [image_id] [new_image_name]`         | Tag an image with a human readable name            								|
|`docker commit [container_name] [new_image_name]`| Create image from a stopped container with a human readable name  |
|`docker restart [container_name]`  		          | restart a container.           								                    |
|`docker exec -ti [container_name] [process]`  		| Add a process to a running container. Can't add ports, volumes, and so on. Example: `docker exec -ti nostalgic_northcutt bash` opens a new bash shell|

## Docker Management

|                 Command                  |                         								   Description                                                   |
|------------------------------------------|-------------------------------------------------------------------------------------------------------------------------|
|`docker build -t [project name] .`        | Build a Docker Image                                              														 |
|`docker system prune`					   | Clean up any resources — images, containers, volumes, and networks — that are dangling (not associated with a container)|
|`docker system prune -a`                  | Remove any stopped containers and all unused images (not just dangling images)                                          |
|`docker rm [container_id-or-name]`        | Remove a container with a particular container name               														 |
|`docker rm $(docker ps -a -q)`            | Stop and remove all containers                                    														 |
|`docker rm -v container_name`			   | Remove a container and its volume                                                                                       |

## MySQL Docker Container 

|            Connecting to the MySQL docker image via CLI                |                  Description                   |
|------------------------------------------------------------------------|------------------------------------------------| 
|`docker exec mysql-docker mysql -usbat -psbat -e 'show databases;'`	   | connect to MySQL image without interactive CLI.|												
|`docker exec -it mysql-docker mysql -usbat -psbat -e 'show databases;'` | connect to MySQL image without interactive CLI.|													
|`docker exec -it mysql-docker mysql -usbat -psbat`						           | connect to MySQL image via interactive CLI.	  |													

|            Running multiple versions of MySQL docker images. Examples        |                  Description                   |
|------------------------------------------------------------------------------|------------------------------------------------| 
|`docker run --name=mysql_legacy -e MYSQL_ROOT_PASSWORD=mysql007 -d mysql:5.7` |                                                |	
|`docker run --name=mysql_latest -e MYSQL_ROOT_PASSWORD=mysql007 -d mysql:8.0` |                                                |	

## Docker Hub

|                      Docker Hub Commands                           |                         Description                               |
|--------------------------------------------------------------------|-------------------------------------------------------------------| 
|`docker pull [container_name]`							                         | logout a Docker image from Docker Hub                             |
|`docker logout`							                                       | logout of Docker Hub from the local machine.                      |
|`docker login --username=YOUR_DOCKERHUB_USERNAME`	                 | login to Docker Hub from your machine.                            |
|`docker tag <existing-image> <hub-user>/<repo-name>[:<tag>]`        | re-tagging an existing local image					             |
|`docker commit <existing-container> <hub-user>/<repo-name>[:<tag>]` | commit changes					                                 |
|`docker push <hub-user>/<repo-name>:<tag>`                          | push this repository to the registry designated by its name or tag|
