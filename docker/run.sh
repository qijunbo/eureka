#!/bin/sh
mkdir tmp
systemctl stop nginx
docker stop eureka
docker rm eureka
systemctl start nginx
docker run --name eureka --restart=always -d -v $(pwd)/tmp:/tmp -p 8761:8761 qijunbo/eureka
#docker run --name eureka --restart=always -d -v $(pwd)/tmp:/tmp -p 8761:8761 springcloud/eureka
