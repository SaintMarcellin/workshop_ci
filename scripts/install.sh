#!/bin/bash

### Update packages
apt-get update --yes --quiet=2 && apt-get upgrade --yes --quiet=2 && apt-get dist-upgrade --yes --quiet=2

### Install default packages needed for docker
apt-get --yes --quiet=2 install apg curl debconf-utils wget apt-transport-https ca-certificates software-properties-common

### Install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
apt-get update --yes --quiet=2
apt-get install --yes --quiet=2 docker-ce

### Pull Jenkins image
docker pull jenkins/jenkins:lts
