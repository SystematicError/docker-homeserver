#!/bin/sh

for service in */docker-compose.yml; do
    docker-compose -f $service up -d
done
