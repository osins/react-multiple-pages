#!/bin/bash

docker-compose down -v --remove-orphans 
# docker-compose up -d
# docker-compose logs nt
docker-compose run -p 8301:3000 nt sh
