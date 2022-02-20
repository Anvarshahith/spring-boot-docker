FROM maven:3.6.3-jdk-11

# Required for starting application up.



COPY ./pom.xml ./pom.xml

WORKDIR /src/

COPY . /src/

RUN mvn clean install -DskipTests

CMD ["java" ,"-jar","target/spring-boot-mongo-1.0.jar"]
