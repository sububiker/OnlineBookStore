FROM openjdk:8-jdk
MAINTAINER Subrat
ENV JAVA_VER 8
ENV JAVA_HOME /usr/bin/java
RUN mkdir /home/app
WORKDIR /home/app
COPY . /home/app
#EXPOSE 8090
#CMD ["java", "-jar" "OnlineBookStore.war"]
CMD tail -f /dev/null

FROM tomcat:8.0.43-jre8
#ADD /home/app/target/OnlineBookStore.war /usr/local/tomcat/webapps/
COPY --from=openjdk /home/app/target/ /usr/local/tomcat/webapps/
#ADD server.xml /usr/local/tomcat/conf/
EXPOSE 8090
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]


