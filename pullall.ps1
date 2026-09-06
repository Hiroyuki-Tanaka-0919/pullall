function git_pull {
    param([string]$dir)
    Write-Host "$dir"
    Push-Location $dir
    git pull
    Pop-Location
}
git_pull -dir ".\prog\django_exam" # Change to your own path
git_pull -dir ".\prog\django_tutorial" # Change to your own path
