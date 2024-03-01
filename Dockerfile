FROM adoptopenjdk/openjdk11:alpine-slim

COPY ./target/*.jar /app/app.jar

CMD ["java", "-jar", "/app/app.jar"]
