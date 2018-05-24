#!/bin/sh
mkdir -p /opt/eureka
cp -f eureka.jar /opt/eureka/eureka.jar
chmod 750 /opt/eureka/eureka.jar
ln -sf   /opt/eureka/eureka.jar /etc/init.d/eureka
systemctl daemon-reload
systemctl enable eureka
systemctl start eureka

