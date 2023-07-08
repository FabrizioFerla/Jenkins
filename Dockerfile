FROM openjdk:17
EXPOSE 8081
ADD target/jenkins.jar jenkins.jar
ENTRYPOINT ["java","-jar","jenkins/jenkins.jar"]