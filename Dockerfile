FROM quay.io/drsylent/cubix/block2/homework-base:java21 as backapp

LABEL cubix.homework.owner="Aradi Daniel"
ENV CUBIX_HOMEWORK="Aradi Daniel"
ENV APP_DEFAULT_MESSAGE=""

COPY backapp/target/*.jar backapp.jar

CMD ["sh", "-c", "java -jar backapp.jar --server.port=8081"]



FROM quay.io/drsylent/cubix/block2/homework-base:java21 as frontapp

LABEL cubix.homework.owner="Aradi Daniel"
EXPOSE 8080
ENV CUBIX_HOMEWORK="Aradi Daniel"
ENV APP_DEFAULT_MESSAGE=""

COPY frontapp/target/*.jar frontapp.jar

CMD ["sh", "-c", "java -jar frontapp.jar --back.url=${BACK_URL}"]