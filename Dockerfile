FROM eclipse-temurin:19-alpine
VOLUME /tmp
EXPOSE 8080
WORKDIR /app
ARG JAR_FILE=target/RandomNumberGenerator-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} Random-Number-Generator.jar
ENTRYPOINT ["java","-jar","Random-Number-Generator.jar"]
