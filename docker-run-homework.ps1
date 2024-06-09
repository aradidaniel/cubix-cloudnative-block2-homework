#build images

mvnw clean verify

#build container
docker build -t homework1:test .

#check image labels

docker inspect homework1:test


you can also do it on a running container like this:

#run container
docker run -p 8080:8080 -it homework1:test

#check container labels
docker inspect "containerID", but 

#run docker compose

docker-compose up

#check logs

docker logs -f homework1:test

