# Stage 1: Build the application
FROM maven:4.0.0-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the application
FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/User_Registration-0.0.1-SNAPSHOT.jar User_Registration.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "User_Registration.jar"]
