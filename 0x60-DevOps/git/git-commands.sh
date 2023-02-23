
# basics git commands 
# https://www.atlassian.com/git/tutorials/atlassian-git-cheatsheet

git init     # is used to create a new Git repository. for tracking changes in existing directory
git add .   # is used to add a file to the staging area.
git commit -m "first commit" # is used to commit the file, along with a message
git remote add origin  # is used to connect your local repository to the remote server 
# ex : git remote add origin will ask for the url of the remote repository
git push -u origin master # is used to push the changes in your local repository up to the remote repository you specified as the origin


# git clone
# git pull
# git push

git branch # is used to list all the branches in the repository
git checkout # is used to switch from one branch to another ex: git checkout master will switch to master branch
git merge # is used to merge one branch into another ex: git merge master will merge master branch into current branch


git stash # is used to temporarily store all the modified tracked files for later use 
git reset # is used to reset the current HEAD to the specified state 
# ex: git reset --hard will reset the current HEAD to the last commit
git revert # is used to revert a commit by creating a new commit # ex: git revert HEAD will revert the last commit

git log # is used to show the commit logs 
git show # is used to show the changes between commits, commit and working tree, etc
git diff # is used to show the file differences which are not yet staged 
# exM git diff --staged # is used to show the differences between the files in the staging area and the latest version presenT in HEAD


git tag # is used to give tags to the specified commit EXAMPLE: git tag -a v1.4 -m "my version 1.4" 9fceb02

# git stash
# git reset
# git revert

