#!/bin/sh
mkdir -p $HOME/docker-apps/secrets/mongo
echo "MONGO_INITDB_ROOT_USERNAME=root" > $HOME/docker-apps/secrets/mongo/MONGO_INITDB_ROOT_USERNAME
#echo "MONGO_INITDB_ROOT_PASSWORD=$(openssl rand -base64 6 | tr -d '\n')" > $HOME/docker-apps/secrets/mongo/MONGO_INITDB_ROOT_PASSWORD
echo "MONGO_USER=unifi" > $HOME/docker-apps/secrets/mongo/MONGO_USER
echo "MONGO_PASS=$(openssl rand -base64 6 | tr -d '\n')" > $HOME/docker-apps/secrets/mongo/MONGO_PASS
echo "$(openssl rand -base64 6 | tr -d '\n')" > $HOME/docker-apps/secrets/mongo/INITDB_ROOT_PASSWORD_FILE
echo "MONGO_DBNAME=unifi" > $HOME/docker-apps/secrets/mongo/MONGO_DBNAME
echo "MONGO_AUTHSOURCE=admin" > $HOME/docker-apps/secrets/mongo/MONGO_AUTHSOURCE
ls -la $HOME/docker-apps/secrets/mongo/
