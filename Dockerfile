FROM maven:3-alpine

COPY pom.xml project/

COPY src/ project/src/

WORKDIR project/

RUN mvn clean install

EXPOSE 8090

ENTRYPOINT [ "java", "-jar", "/project/target/com.catho.jar"]
