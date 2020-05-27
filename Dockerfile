FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
COPY . /var/lib/jenkins/workspace/Onlinebookstore-dockerized/target/OnlineBookStore.war
WORKDIR /var/lib/jenkins/workspace/Onlinebookstore-dockerized/target/
//ENTRYPOINT "java" , "-jar", "/OnlineBookStore.war"
EXPOSE 8000
CMD java -jar OnlineBookStore.war
CMD "/usr/bin/java" "-jar", "OnlineBookStore.war"
