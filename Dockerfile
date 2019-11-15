FROM openjdk:8-jdk-alpine

LABEL source="https://github.com/fiap-69aoj/helppoint-gateway" \
      maintainer="flavioso16@gmail.com"

ADD ./target/gateway-0.0.1-SNAPSHOT.jar gateway.jar

EXPOSE 9090

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=prod", "/gateway.jar"]