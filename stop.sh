#!/bin/sh

stop_service() {
    docker-compose -f $1 stop
}

if [ $# -eq 0 ]; then
    for service in */docker-compose.yml; do
        stop_service "$service"
    done
else
    for service in "$@"; do
        stop_service "$service/docker-compose.yml"
    done
fi
