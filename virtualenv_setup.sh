#!/bin/bash

cd `dirname $0`
virtualenv bootstrap
bootstrap/bin/pip install -r requirements-bootstrap.txt
bootstrap/bin/virtualenv \
	--pip 20.2.3 \
	--wheel 0.35.1 \
	--setuptools 50.3.0 \
	venv
venv/bin/pip install -r requirements.txt
