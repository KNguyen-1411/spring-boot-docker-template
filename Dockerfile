# Stage 1: Development stage
FROM openjdk:21-jdk-slim AS dev

RUN apt-get update && apt-get install -y curl tar && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY mvnw pom.xml ./
COPY .mvn .mvn

RUN ./mvnw dependency:go-offline

COPY src ./src

EXPOSE 8080

CMD ["./mvnw", "spring-boot:run"]

# Stage 2: Production stage
FROM openjdk:21-jdk-slim AS build

WORKDIR /app

COPY mvnw pom.xml ./
COPY .mvn .mvn

RUN ./mvnw dependency:go-offline

COPY src ./src

RUN ./mvnw clean package -DskipTests

FROM openjdk:21-jre-slim AS production

WORKDIR /app

COPY --from=build /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
