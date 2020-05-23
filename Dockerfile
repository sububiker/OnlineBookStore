//FROM openjdk:8-jdk
//MAINTAINER hemantakumarpati
//ENV JAVA_VER 8
//ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
//COPY . /var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war
//WORKDIR /var/lib/jenkins/workspace/online-book-store/target/
//ENTRYPOINT "java" "-jar", "/var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war"
//EXPOSE 8000
//CMD java -jar OnlineBookStore.war
//CMD "/usr/bin/java" "-jar", "OnlineBookStore.war"
# Pull base image.

FROM ubuntu:latest
RUN \
# Update
apt-get update -y && \
# Install Java
apt-get install default-jre -y
ADD ./target/gs-serving-web-content-0.1.0.jar spring-mvc-example.jar
EXPOSE 8080
CMD java -jar spring-mvc-example.jar
