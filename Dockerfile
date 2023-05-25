#Use a base image with Java pre-installed
FROM openjdk:11

# Set the working directory inside the container
WORKDIR /app

# Copy the application JAR file to the container
COPY target/myapp.jar /app

# Expose port 5000
EXPOSE 5000

# Set the entry point command for running the application on port 5000
ENTRYPOINT ["java", "-jar", "-Dserver.port=5000", "myapp.jar"]
