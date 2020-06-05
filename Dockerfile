FROM openjdk:8-jdk
MAINTAINER hemantakumarpati
ENV JAVA_VER 8
ENV JAVA_HOME /usr/bin/java
RUN mkdir /home/app
WORKDIR /home/app
COPY . /home/app
EXPOSE 8000
CMD ["java", "-jar" "OnlineBookStore.war"]
CMD tail -f /dev/null

