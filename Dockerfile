# Etapa de build
FROM maven:3.9.4-eclipse-temurin-17 AS builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Etapa de execução
FROM eclipse-temurin:17-jre
WORKDIR /app
COPY --from=builder /app/target/*.jar app.jar

# Railway define automaticamente a variável PORT
ENV PORT=8080
EXPOSE 8080

CMD ["java", "-jar", "app.jar"]