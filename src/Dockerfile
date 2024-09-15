FROM maven:4.0.0-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
COPY --from=build /target/User_Registration-0.0.1-SNAPSHORT.jar User_Registration.jar
EXPOSE 5000
ENTRYPOINT ["JAVA",-"JAR","User_Registration.jar"]