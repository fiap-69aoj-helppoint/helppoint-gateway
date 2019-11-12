FROM openjdk:8-jdk-alpine

LABEL source="https://github.com/fiap-69aoj/helppoint-gateway" \
      maintainer="flavioso16@gmail.com"

ADD ./target/helppoint-0.0.1-SNAPSHOT.jar helppoint.jar

EXPOSE 8091

ENTRYPOINT ["java","-jar", "-Dspring.profiles.active=prod", "/helppoint.jar"]