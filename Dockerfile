FROM openjdk:17
EXPOSE 8081
ADD target/Jenkins.jar Jenkins.jar
ENTRYPOINT ["java","-jar","/Jenkins.jar"]