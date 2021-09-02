#!/bin/sh
docker-compose down --rmi all --volumes
docker rmi dockerangle/staging
docker-compose build
docker-compose up -d