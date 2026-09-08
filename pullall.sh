#!/bin/sh
set -x
git_pull() {
  cd $1
  git pull
  cd ~
}
git_pull ./prog/atc # Change to your own path
git_pull ./python/itp-test # Change to your own path
