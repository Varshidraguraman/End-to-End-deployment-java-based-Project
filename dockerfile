# Step 1: Use an official OpenJDK image as a base image
FROM openjdk:8-jdk-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the Maven-built .jar file from your local machine to the container
COPY target/jenkins-maven-pipeline.jar /app/jenkins-maven-pipeline.jar

# Step 4: Expose the port the application will run on
EXPOSE 8080

# Step 5: Set the entrypoint for the Docker container to run your Java application
ENTRYPOINT ["java", "-jar", "jenkins-maven-pipeline.jar"]
