#!/bin/bash
# $1 name
# $2 mejor-version
# $3 minor-version
docker build -t $1:$2.$3 ~/work/docker/$1