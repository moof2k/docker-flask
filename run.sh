#!/bin/sh

docker kill www
docker rm www
mkdir -p data
docker build -t www .
docker run -dit --name=www \
    -v $PWD/app:/www \
    -p 5000:5000 \
    www bash
docker exec -it www python /www/main.py
