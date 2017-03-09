#!/bin/sh

# Absolute path this script is in, thus docker/bin
SCRIPTPATH=$(dirname "$0")

cd $SCRIPTPATH/../
docker-compose -p docker-app down