#!/bin/sh

start_service() {
    docker-compose -f $1 up -d
}

if [ $# -eq 0 ]; then
    for service in */docker-compose.yml; do
        start_service "$service"
    done
else
    for service in "$@"; do
        start_service "$service/docker-compose.yml"
    done
fi
