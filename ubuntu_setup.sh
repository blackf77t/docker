#!/bin/bash

# reference: https://docs.docker.com/engine/installation/linux/docker-ce/ubuntu/#os-requirements

# remove old versions
sudo apt-get remove docker docker-engine docker.io

# update required packages
sudo apt-get update
sudo apt-get install apt-transport-https ca-certificates curl software-properties-common


# get docker key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add 

# add repo and install docker
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce
sudo apt-get update

# test docker
sudo docker run hello-world
