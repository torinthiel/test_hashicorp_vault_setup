#!/bin/bash

. config.sh

docker run \
	--rm \
	--detach \
	--name $POSTGRESQL_CONTAINER_NAME \
	--mount type=volume,source=$POSTGRESQL_DATA_VOLUME,destination=/var/lib/postgresql/data \
	--env POSTGRES_PASSWORD=notapass \
	postgres:$POSTGRESQL_TAG
