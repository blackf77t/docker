#!/bin/bash

# reference: https://github.com/docker/labs/tree/master/beginner/
docker pull alpine

# verify the image is recieved
docker images

# run an echo from Alpine to confirm the container works
docker run alpine echo "hello from alpine"
docker run alpine /bin/sh

# running containers
docker ps -a

# interactive shell
docker run -it alpine /bin/sh
