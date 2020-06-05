FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/bin/java
WORKDIR "/home/subrat/workspace/onlinebookstorepipeline/target"
COPY /home/subrat/workspace/onlinebookstorepipeline/target/OnlineBookStore.war "/home"
EXPOSE 8000
CMD ["java", "-jar" "OnlineBookStore.war"]
CMD tail -f /dev/null

