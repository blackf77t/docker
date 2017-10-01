#!/bin/bash

# reference: https://docs.docker.com/engine/installation/linux/docker-ce/centos/#os-requirements

# remove old versions
sudo yum -y remove docker docker-common docker-selinux docker-engine

# update required packages
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo
sudo yum -y install docker-ce
sudo yum -y update

# test docker
sudo docker run hello-world
