#!/bin/bash

apt-get update
apt-get install -y rake

cd ../concourse-docker-compose
rake # wait awhile, grab a coffee
cd example/
docker-compose build
docker-compose up
