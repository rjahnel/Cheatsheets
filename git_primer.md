# config
git config --global username "name"
git config --global email "name@xyz.com"

git config --global pager.log false
git config --global pager.branch false

or for all commands: 
git config --global core.pager cat

# cache access token after using it as password
git config --global credential.helper cache

# new repository
git init

## cloning existing repository
git clone /path/to/repository

or remote

git clone https://link/to/repository

example: https://github.com/rjahnel/100DaysPythonBootcamp.git

# Workflow
## add and commit files

git add "filename"
or 
git add .
for all files in folder

## show repository status
git status

## commit changes
git commit -m "Commit-message"


## Save commit to remote repository
git push origin main

## Save commit from remote repository
git pull origin main

# working with branches

## create a branch
git branch "name"

## change branch
git checkout "name"

## push the branch
git push -u origin "name"

## show branches
git branch -a

## merge branch with master (main)
git checkout main

git merge "name"

## delete branch
git branch -d "name"
