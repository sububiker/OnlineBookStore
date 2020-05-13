FROM openjdk:8-jdk-alpine
ARG WAR_FILE=target/*.war
COPY ${WAR_FILE} onlinebookstore.war
ENTRYPOINT ["java","-war","/onlinebookstore.war"]
EXPOSE 80
