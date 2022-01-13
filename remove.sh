#! /bin/bash
docker-compose down --rmi all --volumes --remove-orphans
docker network rm doh-backend