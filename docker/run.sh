#!/bin/sh
mkdir tmp
docker stop eureka
docker rm eureka
docker run --name eureka -d -v $(pwd)/tmp:/tmp -p 8761:8761 qijunbo/eureka