#FROM alpine:latest as build
#
#RUN apk update
#RUN apk add openjdk17
#
#COPY . .
#RUN chmod +x ./gradlew
#RUN ./gradlew bootJar --no-daemon
#
#FROM openjdk:17-alpine
#EXPOSE 9000
#COPY --from=build /build/libs/invOperativa-0.0.1-SNAPSHOT.jar app.jar
#
#ENTRYPOINT ["java", "-jar", "app.jar"]
# Usa una imagen base de OpenJDK 17 con Alpine Linux
#FROM gradle:latest AS build
#WORKDIR /app
#COPY . .
#RUN gradle build --no-daemon
#
#FROM alpine:latest
#RUN apk add --no-cache openjdk17
#
#EXPOSE 8080
#
#COPY build/libs/invOperativa-0.0.1-SNAPSHOT.jar app.jar
#
#ENTRYPOINT ["java", "-jar", "/app.jar"]
# Etapa 1: Construir la aplicación con Gradle
FROM gradle:latest AS build
WORKDIR /app
COPY . .
RUN gradle build --no-daemon

# Etapa 2: Crear la imagen final con JDK 17
FROM alpine:latest
RUN apk add --no-cache openjdk17
WORKDIR /app
COPY ./build/libs/invOperativa-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
