FROM openjdk:8-jre-alpine
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
WORKDIR /var/lib/jenkins/workspace/Onlinebookstore-dockerized/target/
COPY /var/lib/jenkins/workspace/Onlinebookstore-dockerized/OnlineBookStore.war /OnlineBookStore.war
ENTRYPOINT "java" "-jar", "/var/lib/jenkins/workspace/Onlinebookstore-dockerized/target/OnlineBookStore.war"
CMD java -jar /OnlineBookStore.war
EXPOSE 8000
