FROM openjdk:8-jre-alpine
COPY /var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war /OnlineBookStore.war
WORKDIR /var/lib/jenkins/workspace/online-book-store/target/
ENTRYPOINT "java" "-jar", "/var/lib/jenkins/workspace/online-book-store/target/OnlineBookStore.war"
CMD java -jar /OnlineBookStore.war
EXPOSE 8000
