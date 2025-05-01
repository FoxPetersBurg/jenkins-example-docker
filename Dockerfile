FROM openjdk:11-jre-slim

RUN apt-get update && apt-get install -y git curl

ADD app.jar /app.jar

# Устанавливаем точку входа
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "/app.jar"]
