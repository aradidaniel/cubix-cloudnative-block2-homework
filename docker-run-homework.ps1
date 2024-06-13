#build images in both 
mvnw clean verify

#build container
docker build -t backapp -f Dockerfile backapp
docker build -t frontapp -f Dockerfile frontapp

#check image labels
docker inspect backapp
docker inspect frontapp

#run container
docker run -p 8080:8080 frontapp 
docker run -p 8080:8080 backapp

#check image logs
docker logs -f frontapp
docker logs -f backapp

#check container labels
docker inspect "containerID"

#run docker compose
docker-compose up


