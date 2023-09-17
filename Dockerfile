#define base docker image
FROM openjdk:11
LABEL maintainer ="Priyanka Srivastava"
ADD target/springboot-docker-0.0.1-SNAPSHOT.jar springboot-docker-demo.jar
ENTRYPOINT ["java", "-jar", "springboot-docker-demo.jar"]