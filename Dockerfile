# Use a base Java image with JDK 11 from Docker Hub
FROM adoptopenjdk/openjdk11:alpine-jre

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java application into the container
COPY Main.class .

# Expose port 8080 (default for Spring Boot)
EXPOSE 8000

# Set the command to run the application
CMD ["java", "Main"]
