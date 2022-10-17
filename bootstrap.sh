#!/bin/sh

# Bootstrap script, written for systems running Alpine
# In order to run this bootstrap script, run the following command:
# wget https://raw.githubusercontent.com/SystematicError/docker-homeserver/master/bootstrap.sh -O - | sh

cd

apk update
apk upgrade

apk add git podman
apk add --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing/ podman-compose

git clone https://github.com/SystematicError/docker-homeserver homeserver

