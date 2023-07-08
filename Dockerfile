FROM openjdk:17
EXPOSE 8081
ADD target/start.jar start.jar
ENTRYPOINT ["java","-jar","/Jenkins.jar"]