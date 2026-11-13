#!/bin/sh
set -x
gitpull() {
  if [ -e $1 ]; then
    cd $1
    git pull
    cd ~
  else
    echo "directory not found."
  fi
}

git_pull ./prog/atc # Change to your own path
git_pull ./python/itp-test # Change to your own path
