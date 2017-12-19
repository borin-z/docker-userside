#!/bin/bash

docker build -t borin/userside:php5.6-fpm -f fpm-5.6/Dockerfile ./fpm-5.6 && \
docker push borin/userside:php5.6-fpm && \
docker build -t borin/userside:postgres-10 -f postgres-10/Dockerfile ./postgres-10 && \
docker push borin/userside:postgres-10 && \
docker build -t borin/userside:nginx-latest -f nginx/Dockerfile ./nginx && \
docker push borin/userside:nginx-latest && \
docker build -t borin/userside:usm_peleng -f usm_peleng/Dockerfile ./usm_peleng && \
docker push borin/userside:usm_peleng && \
echo "build OK";

