#!/bin/bash

CONTAINER_NAME=banquise
IMAGE_NAME=aws-hugo-docker:latest

sudo docker stop ${CONTAINER_NAME} > /dev/null 2>&1
sudo docker rm ${CONTAINER_NAME} > /dev/null 2>&1

sudo docker run -d --name ${CONTAINER_NAME} \
    -p 8080:80 \
    -p 1313:1313 \
    -v $PWD/banquise:/home/root/site \
    $IMAGE_NAME

sleep 10

sudo docker exec -it ${CONTAINER_NAME} hugo server -D -s /home/root/site --bind 0.0.0.0