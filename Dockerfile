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
FROM alpine:latest
EXPOSE 9000
COPY build/libs/invOperativa-0.0.1-SNAPSHOT.jar app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]