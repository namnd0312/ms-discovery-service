# For Java 8, try this
# FROM openjdk:8-jdk-alpine

# For Java 11, try this
FROM adoptopenjdk/openjdk11:alpine-jre


WORKDIR /opt/app

ARG JAR_FILE=target/discovery-service.jar

# cp spring-boot-web.jar /opt/app/app.jar
COPY ${JAR_FILE} discovery-service.jar

# java -jar /opt/app/app.jar
ENTRYPOINT ["java","-jar","discovery-service.jar"]

#docker build --platform=linux/amd64 -t discovery-service .
#docker run -d -p 8761:8761  --network=mybridge -t discovery-service