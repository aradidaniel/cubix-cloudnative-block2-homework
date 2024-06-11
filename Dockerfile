FROM quay.io/drsylent/cubix/block2/homework-base:java21 

ARG JAR_PATH
LABEL cubix.homework.owner="Aradi Daniel"
ENV CUBIX_HOMEWORK="Aradi Daniel"
ENV APP_DEFAULT_MESSAGE=""
COPY ${JAR_PATH}/target/*.jar app.jar
CMD ["java", "-jar", "app.jar"]