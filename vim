#!/bin/bash

docker run \
  --rm -it \
  -v /:/mnt/host_fs \
  -e "CURRENT_DIRECTORY=$(pwd)" \
  -u $(id -u):$(id -g) \
  benb88/vim_in_docker \
  $@