#!/bin/bash
#set -x

PAT1="Your GitHub Personal Access Token 1"
PAT2="Your GitHub Personal Access Token 2"

clone() {
  mkdir -p $PARENT
  DSTDIR=$PARENT$TARGET
  echo $DSTDIR
  if [ ! -d $DSTDIR ]; then
    # Execute a clone if it exists.
    echo "Clone $TARGET."
    cd $PARENT
    git clone https://github.com/$USERID/$TARGET.git
    cd $TARGET
    git config user.email $EMAIL
    git remote set-url origin $PAT.git
    git push
    cd
  else
    # If it exists and is not empty, issue a warning and return.
    if [ -n "$(ls -A $DSTDIR)" ]; then
      echo "A file already exists at the destination: $DSTDIR"
    fi
  fi
}

# example 1
PARENT=./prog/python/
TARGET=python_sample
USERID=your_github_user_id1
EMAIL=example@gmail.com
PAT=https://$USERID:$PAT1@github.com/$USERID/$TARGET
clone

# example 2
PARENT=./prog/html/
TARGET=html_sample
USERID=your_github_user_id2
EMAIL=example@gmail.com
PAT=https://$USERID:$PAT2@github.com/$USERID/$TARGET
clone
