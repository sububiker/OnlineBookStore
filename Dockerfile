FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/bin/java
WORKDIR "/home/subrat/workspace/onlinebookstorepipeline@tmp/target"
COPY OnlineBookStore.war "/home/subrat/workspace/onlinebookstorepipeline@tmp/target"
EXPOSE 8000
CMD ["java", "-jar" "OnlineBookStore.war"]
CMD tail -f /dev/null

