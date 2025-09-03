# Use OpenJDK 17
FROM openjdk:17-jdk-alpine
WORKDIR /app
# Copy the built JAR into the container
COPY target/discovery-service-0.0.2-SNAPSHOT.jar /app.jar

# Expose Eureka port
EXPOSE 8761

# Run the JAR
ENTRYPOINT ["java","-jar","app.jar"]

