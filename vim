#!/bin/bash

docker run \
  --rm -it \
  -v /:/mnt/host_fs \
  -e "CURRENT_DIRECTORY=$(pwd)" \
  -u $(id -u):$(id -g) \
  bencao/vim_in_docker \
  $@
