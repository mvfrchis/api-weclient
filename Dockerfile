# Paso 1: Compilar la aplicación usando Maven
FROM maven:3.8.5-openjdk-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Paso 2: Ejecutar la aplicación con Java 17
FROM openjdk:17-jdk-slim
COPY --from=build /target/api-0.0.1-SNAPSHOT.jar api.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "api.jar"]