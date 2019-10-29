docker login -u $DOCKER_ID -p $DOCKER_PASSWORD
docker build -t docker-node-express-mongoapp .
docker run --name docker-node-express-mongoapp -p 9000:9000 -d docker-node-express-mongoapp
docker tag docker-node-express-mongoapp sds111888/docker-node-express-mongoapp
docker push sds111888/docker-node-express-mongoapp

