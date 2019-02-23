#!/bin/bash
# $1 name
# $2 version
docker build -t $1:$2 ./work/docker/$1