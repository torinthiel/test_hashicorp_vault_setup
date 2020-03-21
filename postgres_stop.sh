#!/bin/bash

. config.sh

docker stop $POSTGRESQL_CONTAINER_NAME
