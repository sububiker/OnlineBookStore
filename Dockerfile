FROM tomcat:8.0.43-jre8
MAINTAINER Subrat
#ADD /home/subrat/workspace/onlinebookstorepipeline/target/OnlineBookStore.war /usr/local/tomcat/webapps/
#workdir /home/subrat/workspace/onlinebookstorepipeline/target/
#COPY ./OnlineBookStore.war /usr/local/tomcat/webapps/
#ADD server.xml /usr/local/tomcat/conf/

RUN mkdir /home/app
WORKDIR /home/app
COPY ./target/*.war /usr/local/tomcat/webapps/
EXPOSE 8080
CMD chmod +x /usr/local/tomcat/bin/catalina.sh
CMD ["catalina.sh", "run"]

FROM nginx:alpine
COPY --from=tomcat ./target/ /usr/share/nginx/html
