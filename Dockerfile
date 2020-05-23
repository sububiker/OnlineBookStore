FROM ubuntu:latest
RUN apt-get update -y && apt-get install default-jre -y
ADD ./target/gs-serving-web-content-0.1.0.jar spring-mvc-example.jar
EXPOSE 8080
CMD java -jar spring-mvc-example.jar
