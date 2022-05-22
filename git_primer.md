# config
git config --global username "name"
git config --global email "name@xyz.com"

git config --global pager.log false
git config --global pager.branch false

or for all commands: 
git config --global core.pager cat

# cache access token after using it as password
git config --global credential.helper cache

git config --global core.autocrlf true

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

## show log
git log --graph

## show short version of log
git log --oneline

## commit changes
git commit -m "Commit-message"


## Save commit to remote repository
git push origin main

## Save commit from remote repository
git pull origin main

## working with checkout/revert

### checkout - get back in time temporary
git log
git checkout <commitnumber>  ----> get back in time

--> look around or check thing in this commit

git checkout master          ----> get back to main commit


### Revert commit (switch to commits)
git revert <commitnumber>    ----> set commit number to the HEAD

----> get back to origin HEAD (revert the revert)
git checkout master
git revert <commitnumber of master>

### Reset commit (soft/mixed/hard!)
git reset --hard <commitnumber>    ---> reset to the commit <commitnumber>
---> use hard reset to go back mutiple commits (be careful, there's no way back!)

# working with branches

## create and switch to new branch
git checkout -b dev ---> creates the branch dev and switch to dev

## create a branch
git branch "name"

## change branch
git checkout "name"

## push the branch
git push -u origin "name"

## show all branches
git branch -a

## merge branch with master (main)
git checkout main

git merge "name"

## delete branch
git branch -d "name"


