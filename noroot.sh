#!/bin/bash

echo Please, enter the username of the docker administrator
read USER

sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
echo Please reboot for changes to take affect.
