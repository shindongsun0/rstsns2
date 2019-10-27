docker login -u $DOCKER_ID -p $DOCKER_PASSWORD
docker build -t rstsns .
docker run --name rstsns-container -p 9000:9000 -d rstsns
docker tag rstsns sds111888/rstsns
docker push sds111888/rstsns
