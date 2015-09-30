#!/bin/bash

HOST_FS_ROOT="/mnt/host_fs"
HOST_FS_CURRENT_DIRECTORY="$HOST_FS_ROOT$CURRENT_DIRECTORY"

host_fs_path_to_container_fs_path() {
  # command input could be one of those cases
  # - empty
  # - absolute path or ~ (will automatically be expanded by shell)

  if [ -z "$1" ]
  then
    echo "$HOST_FS_CURRENT_DIRECTORY"
  elif [[ "$1" == "/"* ]]
  then
    echo "$HOST_FS_ROOT$1"
  else
    (cd $HOST_FS_CURRENT_DIRECTORY && readlink -f $1)
  fi
}

directory() {
  if [ -d "$1" ]
  then
    echo "$1"
  else
    echo $(dirname $1)
  fi
}

project_root() {
  # support git only
  GIT_PROJECT_ROOT=$(git rev-parse --show-toplevel 2>/dev/null)
  if [ ! -z "$GIT_PROJECT_ROOT" ]
  then
    echo $GIT_PROJECT_ROOT
  else
    echo ""
  fi
}

FILE_PATH=$(host_fs_path_to_container_fs_path $@)

cd $(directory $FILE_PATH)

if [ ! -z $(project_root) ]
then
  cd $(project_root)
fi

vim $FILE_PATH
