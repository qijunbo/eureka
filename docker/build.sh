#!/bin/bash
cp ../build/libs/*.jar ./
docker image rm  qijunbo/eureka
docker image build -t qijunbo/eureka .
