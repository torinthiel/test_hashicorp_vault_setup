#!/bin/bash

. config.sh

docker run \
	--tty \
	--interactive \
	--rm  \
	--mount type=bind,source=`pwd`/ansible,destination=/home/ansible/playbook \
	$ANSIBLE_IMAGE:$ANSIBLE_TAG "$@"
