FROM maven

COPY . /sample
run cd sample && \
    mvn install

ENTRYPOINT java -jar /sample/target/camel-netty-proxy-0.0.1.jar
