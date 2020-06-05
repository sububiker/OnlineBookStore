FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/bin/java
WORKDIR "C:\\Program Files (x86)\\Jenkins\\workspace\\onlinebookstorepipeline\\target"
COPY OnlineBookStore.war "C:\\Program Files (x86)\\Jenkins\\workspace\\onlinebookstorepipeline\\target"
EXPOSE 8000
CMD ["java", "-jar" "OnlineBookStore.war"]
CMD tail -f /dev/null

