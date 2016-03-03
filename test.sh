#!/bin/bash

apt-get update
apt-get install -y rake

wget -qO- https://get.docker.com/ | sh
apt-get -y install python-pip
pip install docker-compose

cd concourse-docker-compose
rake # wait awhile, grab a coffee
cd example/
docker-compose build
docker-compose up
