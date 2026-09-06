#!/bin/sh
set -x
gitpull() {
  cd $1
  git pull
  cd ~
}
gitpull ./prog/atc # Change to your own path
gitpull ./python/itp-test # Change to your own path
