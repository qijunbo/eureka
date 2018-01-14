FROM openjdk:8-jre-alpine
#FROM java:7
VOLUME /tmp
ADD eureka.jar /eureka.jar
RUN bash -c 'touch /eureka.jar'
EXPOSE 8761
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/eureka.jar"]