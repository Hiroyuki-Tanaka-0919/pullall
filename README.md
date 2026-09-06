# PullAll：Pull from GitHub repositories for all your projects

PullAll is a command-line tool that allows you to pull updates from multiple GitHub repositories for all your projects at once. It simplifies the process of keeping your local repositories up-to-date with their remote counterparts.

- pullall.ps1: A PowerShell script that automates the process of pulling updates from multiple GitHub repositories.

- pullall.sh: A Bash script that performs the same function as the PowerShell script, but for Unix-based systems.

## For Example (Windows PowerShell)
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

## For Example (Linux/macOS Bash)
```bash
#!/bin/sh
set -x
gitpull() {
  cd $1
  git pull
  cd ~
}
gitpull ./prog/atc # Change to your own path
gitpull ./python/itp-test # Change to your own path
```



