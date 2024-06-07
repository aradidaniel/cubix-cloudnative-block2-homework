# Use the base image
FROM quay.io/drsylent/cubix/block2/homework-base:java21


#Add name label
LABEL cubix.homework.owner="Aradi Daniel"

#Add info about port

EXPOSE 8080

# Set environment variables
ENV CUBIX_HOMEWORK="Aradi Daniel"
ENV APP_DEFAULT_MESSAGE=""

# Copy the JAR files
COPY frontapp/target/*.jar frontapp.jar
COPY backapp/target/*.jar backapp.jar

# Define the entry point
CMD ["sh", "-c", "java -jar backapp.jar --server.port=8081 & java -jar frontapp.jar --back.url=${BACK_URL}"]

