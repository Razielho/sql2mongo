#!/bin/bash

# drop and re-create mongodb container
docker rm -f mongodb
docker rmi my-mongodb
docker build -t my-mongodb .

#docker run -d -p 27017-27019:27017-27019 --name mongodb --restart unless-stopped mongodb

docker run -d -p 27017-27019:27017-27019 \
       --name mongodb \
       --hostname mongodb \
       --network internal \
       -e MONGO_INITDB_ROOT_USERNAME=admin \
       -e MONGO_INITDB_ROOT_PASSWORD=admin \
       --restart unless-stopped \
       my-mongodb
