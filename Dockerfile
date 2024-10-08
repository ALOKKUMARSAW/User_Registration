
# Step 1: Use a base image with JDK 17
FROM openjdk:17-jdk-slim

# Step 2: Set a working directory inside the container
WORKDIR /User_Registration

# Step 3: Copy the Maven build output (JAR file) into the container
# Assuming your final JAR file will be created in the 'target' directory after building
COPY target/User_Registration-0.0.1-SNAPSHOT.jar User_Registration.jar

# Step 4: Expose the application port (default Spring Boot port is 8080)
EXPOSE 8080

# Step 5: Run the application
ENTRYPOINT ["java", "-jar", "User_Registration.jar"]
