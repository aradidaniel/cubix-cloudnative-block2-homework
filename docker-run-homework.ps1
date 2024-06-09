#build images in both 

mvnw clean verify

#build container
docker build -t homework:backapp --target backapp .
docker build -t homework:frontapp --target frontapp .

#check image labels

docker inspect homework1:test


you can also do it on a running container like this:

#run container
docker run -p 8080:8080 homework:frontapp
docker run -p 8081:8081 homework:backapp
#check container labels
docker inspect "containerID", but 

#run docker compose

docker-compose up

#check logs

docker logs -f homework1:test

