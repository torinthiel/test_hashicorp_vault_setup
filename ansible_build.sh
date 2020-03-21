#!/bin/bash

. config.sh

docker build \
	--tag $ANSIBLE_IMAGE:$ANSIBLE_TAG \
	--file Dockerfile.ansible \
	.
