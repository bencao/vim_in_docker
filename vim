#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  # Mac OS X will always use hard coded user_id and user_group in boot2docker
  # there's a known limitation that directory outside of /Users cannot be edited
  USER_ID=1000
  USER_GROUP=staff
  USER_DIRECTORY=$(pwd -P)
elif [ "$(expr substr $(uname -s) 1 10)" == "MINGW32_NT" ]; then
  # Windows NT platform hasn't been tested yet
  echo "Windows not supported yet"
  exit 1
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  # GNU/Linux will pass real user and group id into container
  USER_ID=$(id -u)
  USER_GROUP=$(id -g)
  USER_DIRECTORY=$(pwd -P)
fi

docker run \
  --rm -it \
  -v /:/mnt/host_fs \
  -e "CURRENT_DIRECTORY=$USER_DIRECTORY" \
  -u $USER_ID:$USER_GROUP \
  benb88/vim_in_docker \
  $@
