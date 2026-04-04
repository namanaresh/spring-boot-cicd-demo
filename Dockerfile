FROM eclipse-temurin:21.0.10_7-jre-alpine
WORKDIR /app
COPY target/cicd-demo-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]