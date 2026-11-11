# Stage 1: Build Spring Boot JAR using Maven & JDK 17
FROM maven:3.9.9-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
RUN mvn dependency:go-offline -B

COPY src ./src
RUN mvn clean package -DskipTests -B

# Stage 2: Lightweight Java 17 Runtime (sized for Render 512MB container)
FROM eclipse-temurin:17-jre-jammy
WORKDIR /app

COPY --from=build /app/target/onest-backend-1.0.0-SNAPSHOT.jar app.jar

EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java -XX:+UseSerialGC -Xss512k -Xmx320m -Xms128m -Dserver.port=${PORT:-8080} -jar app.jar"]
