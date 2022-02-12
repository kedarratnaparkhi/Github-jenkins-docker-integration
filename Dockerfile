FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
RUN apk update && apk add bash
ENTRYPOINT ["java","-jar","/Github-jenkins-docker-integration-1.0.jar"]