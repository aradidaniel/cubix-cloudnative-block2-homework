#build images in both 
mvnw clean verify

#build container
docker build -t homework:backapp --target backapp . --server.port=8081
docker build -t homework:frontapp --target frontapp . --back.url=${BACK_URL}

docker build --build-arg="JAR_PATH=backapp/target/*.jar" --build-arg=${CMD_ARGS} -t backapp .
docker build --build-arg="JAR_PATH=frontapp/target/*.jar" --build-arg=${CMD_ARGS} -t frontapp .



#check image labels

docker inspect homework:backapp
docker inspect homework:frontapp

#run container
docker run -p 8080:8080 homework:frontapp 
docker run -p 8080:8080 homework:backapp




#check image logs

docker logs -f homework:frontapp
docker logs -f homework:backapp

#check container labels
docker inspect "containerID"

#run docker compose

docker-compose up


