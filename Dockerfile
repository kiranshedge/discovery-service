FROM openjdk:17-jdk-alpine
WORKDIR /app

# Copy the JAR that exists inside THIS context
COPY target/discovery-service-0.0.2-SNAPSHOT.jar app.jar

EXPOSE 8761
ENTRYPOINT ["java","-jar","app.jar"]
