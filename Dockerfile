FROM adoptopenjdk/openjdk11:alpine-slim

COPY ./target/*.jar /app/app.jar

EXPOSE 8080
CMD ["java", "-jar", "/app/app.jar"]
