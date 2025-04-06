# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /usr/app

# Copy the packaged JAR file into the container at /app
COPY ./target/my-app-*-SNAPSHOT.jar /usr/app

# Expose the port the application runs on
EXPOSE 8080

# Run the application
CMD ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
