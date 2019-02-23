#!/bin/bash
# $1 name
# $2 mejor-version
# $3 minor-version
docker run \
  -itd \
  --name $1 \
  --hostname $1.rolengrays.org \
  --net demonet \
  --network-alias $1.rolengrays.org \
  --privileged \
  --volume ~/work/container:/mnt/host \
  $1:$2.$3 \
  /sbin/init