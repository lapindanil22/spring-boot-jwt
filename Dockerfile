FROM openjdk:8

EXPOSE 8080

ADD target/spring-boot-jwt.jar spring-boot-jwt.jar

ENTRYPOINT ["java","-jar","spring-boot-jwt.jar"]

