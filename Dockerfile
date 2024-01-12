# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

ENV APP_PORT=8090

# Copy the JAR file into the container at /app
COPY target/devops-integration.jar /app/devops-integration.jar

# Expose the port your application will run on
EXPOSE ${APP_PORT}

# Command to run your application
CMD ["java", "-jar", "devops-integration.jar","--server.port=${APP_PORT}"]
