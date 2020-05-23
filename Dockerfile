//FROM openjdk:8-jdk
//MAINTAINER hemantakumarpati
//ENV JAVA_VER 8
//ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
//COPY . /var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war
//WORKDIR /var/lib/jenkins/workspace/online-book-store/target/
//ENTRYPOINT "java" "-jar", "/var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war"
//EXPOSE 8000
//CMD "/usr/bin/java" "-jar", "OnlineBookStore.war"
FROM python:2.7
EXPOSE 80
WORKDIR /code
ADD . /code
RUN touch index.html
CMD python index.py
