ARG JAR_PATH
ARG CMD_ARGS

FROM quay.io/drsylent/cubix/block2/homework-base:java21 
LABEL cubix.homework.owner="Aradi Daniel"
ENV CUBIX_HOMEWORK="Aradi Daniel"
ENV APP_DEFAULT_MESSAGE=""

COPY ${JAR_PATH} /app.jar
CMD ["java -jar app.jar" "${CMD_ARGS}"]