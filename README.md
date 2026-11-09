# PullAll：Pull from GitHub repositories for all your projects

PullAll is a command-line tool that allows you to pull updates from multiple GitHub repositories for all your projects at once. It simplifies the process of keeping your local repositories up-to-date with their remote counterparts.

- pullall.ps1: A PowerShell script that automates the process of pulling updates from multiple GitHub repositories.

- pullall.sh: A Bash script that performs the same function as the PowerShell script, but for Unix-based systems.

## pullall.ps1: For Example (Windows PowerShell)
```powershell
function git_pull {
    param([string]$dir)
    Write-Host "$dir"
    Push-Location $dir
    git pull
    Pop-Location
}
git_pull -dir ".\prog\django_exam" # Change to your own path
git_pull -dir ".\prog\django_tutorial" # Change to your own path
```

## pullall.sh: For Example (Linux/macOS Bash)
```bash
#!/bin/sh
set -x
git_pull() {
  cd $1
  git pull
  cd ~
}
git_pull ./prog/atc # Change to your own path
git_pull ./python/itp-test # Change to your own path
```

## findgit.ps1: Find .git directories (Windows PowerShell)
```powershell
Get-ChildItem -Recurse -Directory -Filter ".git" -Force
```

## findgit.sh: Find .git directories (Linux/macOS Bash)
```bash
#!/bin/sh
find . -type d -name ".git"
```

## cloneall.sh: Clone from GitHub repositories for all your projects (Linux/macOS Bash)
```bash
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
```