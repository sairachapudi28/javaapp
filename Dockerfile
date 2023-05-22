FROM openjdk:11

# Set the working directory
WORKDIR /app

# Copy the compiled Java web application (WAR file) to the container
COPY target/my-web-app.war /app/my-web-app.war

# Expose port 8000
EXPOSE 8000

# Start the Java web application
CMD ["java", "-jar", "/app/my-web-app.war"]
