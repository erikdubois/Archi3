#!/bin/sh
# Below command will backup everything inside the project folder
# caching your password
# git config --global credential.helper cache
# git config --global credential.helper 'cache --timeout=3600'

git add --all .

# Committing to the local repository with a message containing the time details
curtime=$(date)
git commit -m "Automatic Backup @ $curtime"

# Push the local snapshot to a remote destination
git push origin master
