FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
WORKDIR /var/lib/jenkins/workspace/Onlinebookstore-dockerized/target
COPY OnlineBookStore.war /var/lib/jenkins/workspace/Onlinebookstore-dockerized/target/
EXPOSE 8000
CMD ["java", "-jar" "OnlineBookStore.war"]
CMD tail -f /dev/null

