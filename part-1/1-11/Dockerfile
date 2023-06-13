FROM openjdk:8

RUN git clone --depth=1 https://github.com/docker-hy/material-applications.git /tmp/material-applications && \
    mv /tmp/material-applications/spring-example-project/ /spring-example-project && \
    rm -rf /tmp/material-applications

WORKDIR /spring-example-project
RUN ./mvnw package
EXPOSE 8080
CMD java -jar ./target/docker-example-1.1.3.jar
