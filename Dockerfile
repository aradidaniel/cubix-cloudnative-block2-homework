ARG JAR_PATH

FROM quay.io/drsylent/cubix/block2/homework-base:java21 
LABEL cubix.homework.owner="Aradi Daniel"
ENV CUBIX_HOMEWORK="Aradi Daniel"
ENV APP_DEFAULT_MESSAGE=""
WORKDIR ${JAR_PATH}/target/
COPY *.jar ./app.jar
CMD ["java", "-jar", "app.jar"]