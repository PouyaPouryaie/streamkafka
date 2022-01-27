FROM azul/zulu-openjdk-alpine:11
VOLUME /tmp
MAINTAINER pouya
EXPOSE 8080
ADD target/streamkafka-*.jar /streamkafka.jar
ENTRYPOINT ["java","-jar", "/streamkafka.jar"]
#ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar", "/streamkafka-1.0.0.jar"]