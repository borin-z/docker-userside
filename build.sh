#!/bin/bash

docker build -t borin/userside:php5.6-fpm -f fpm-5.6/Dockerfile . && \
docker push borin/userside:php5.6-fpm && \
docker build -t borin/userside:postgres-10 -f postgres-10/Dockerfile . && \
docker push borin/userside:postgres-10 && \
docker build -t borin/userside:nginx-latest -f nginx/Dockerfile . && \
docker push borin/userside:nginx-latest && \
echo "build OK";

