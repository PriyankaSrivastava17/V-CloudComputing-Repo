# V-CloudComputing-Repo

Instructions for building and running Spring Boot application in Docker by Priyanka Srivastava -M21AIE244

Here are the steps to create a Docker image for your Spring Boot project and run it:

Create a Dockerfile in the root directory of your project with the following content:

#define base docker image

FROM openjdk:11

LABEL maintainer ="Priyanka Srivastava"

ADD target/springboot-docker-0.0.1-SNAPSHOT.jar springboot-docker-demo.jar

ENTRYPOINT ["java", "-jar", "springboot-docker-demo.jar"]

Build the Docker image by running the following command in the terminal:

open the terminal where the docker file is present

docker build -t springboot-docker-demo:latest .

Run the Docker container with the following command:

docker run -p 8081:8080 springboot-docker-demo

Your Spring Boot application should now be accessible at http://localhost:8081.

Remember to stop the container and remove it when you're done:

docker stop container-id

docker rm container-id

If needed, you can remove the Docker image:

docker rmi springboot-docker-demo:latest


@Author - Priyanka Srivastava - M21AIE244
