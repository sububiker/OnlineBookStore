FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
COPY . /var/lib/jenkins/workspace/java-poc/target/onlinebookstore.war
WORKDIR /var/lib/jenkins/workspace/java-poc/target/
ENTRYPOINT "java", "-jar", "/var/lib/jenkins/workspace/java-poc/target/onlinebookstore.war"
EXPOSE 8000
CMD "/usr/bin/java", "-jar", "onlinebookstore.war"
