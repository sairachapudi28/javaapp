# Use a base Java image from Docker Hub
FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the Java source code into the container
COPY Main.java .

# Compile the Java code
RUN javac Main.java

# Set the command to run the application
CMD ["java", "Main"]

# Expose port 5000
EXPOSE 5000
