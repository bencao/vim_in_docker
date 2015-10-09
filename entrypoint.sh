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
  else
    if [[ "$1" == "/"* ]]
    then
      FILE_PATH="$HOST_FS_ROOT$1"
    else
      FILE_PATH="$HOST_FS_CURRENT_DIRECTORY/$1"
    fi

    if [ -L $FILE_PATH ]
    then
      # if it is an absolute link
      # we need to map the link target to container fs once more
      host_fs_path_to_container_fs_path \
        $(stat --format "%N" $FILE_PATH | awk '{print $3}' | sed "s/'//g")
    else
      echo $FILE_PATH
    fi
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
