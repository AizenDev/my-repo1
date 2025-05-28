FROM maven:3.8.6-openjdk-11 AS builder
WORKDIR /boxfuse-sample-java-war-hello
COPY pom.xml .
COPY src ./src
RUN mvn clean install -DskipTests
FROM tomcat:9.0
WORKDIR /usr/local/tomcat/webapps
COPY --from=builder /boxfuse-sample-java-war-hello/target/*.war .
EXPOSE 8080
CMD ["catalina.sh", "run"]
