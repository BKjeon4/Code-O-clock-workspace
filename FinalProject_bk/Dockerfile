# 1. Maven으로 빌드
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# 2. 실행용 이미지
FROM openjdk:11-jre-slim
WORKDIR /app
COPY --from=build /app/target/FinalProject_bk-0.0.1-SNAPSHOT.war app.war

EXPOSE 8080
CMD ["java", "-jar", "app.war"]
