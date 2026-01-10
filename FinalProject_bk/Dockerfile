# 1. Build stage
FROM maven:3.8.6-eclipse-temurin-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# 2. Runtime stage
FROM eclipse-temurin:11-jre
WORKDIR /app
COPY --from=build /app/target/FinalProject_bk-0.0.1-SNAPSHOT.war app.war

EXPOSE 8080
CMD ["java", "-jar", "app.war"]

