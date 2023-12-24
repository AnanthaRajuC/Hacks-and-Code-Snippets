
List the full length image IDs
docker images --no-trunc


Listing out images with filter
docker images --filter=reference='alpine'

docker inspect IMAGE ID

docker attach CONTAINER ID



docker login -u anantha
dckr_pat_rjh34l6-JkYqLZWdbawcFu94EMo


docker commit -m "Added GIT" 5a4 anantha/alpine-git
docker tag anantha/alpine-git:latest anantha/alpine-git:1.0
docker push anantha/alpine-git:1.0

docker build -t anantha/alpine-git .
docker tag anantha/alpine-git anantha/labs-git:v1.0
docker run -itd anantha/labs-git:v1.0 /bin/sh