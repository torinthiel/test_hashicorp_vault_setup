#!/bin/bash

. config.sh

docker rm --force $POSTGRESQL_CONTAINER_NAME
docker volume rm $POSTGRESQL_DATA_VOLUME
