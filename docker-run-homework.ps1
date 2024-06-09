#build images in both 

mvnw clean verify

#build container
docker build -t homework:backapp --target backapp .
docker build -t homework:frontapp --target frontapp .

#check image labels

docker inspect homework:backapp
docker inspect homework:frontapp

#run container
docker run -p 8080:8080 homework:frontapp
docker run -p 8081:8081 homework:backapp

#check image logs

docker logs -f homework:frontapp
docker logs -f homework:backapp

#check container labels
docker inspect "containerID"

#run docker compose

docker-compose up


