#!/bin/bash
# Create a new branch in the submission repository
git checkout -b new-branch
# Remove all .sh files from this branch
rm *.sh
git add .
git commit -m "Remove .sh files from this branch"
# Create, add, and commit file13.txt
echo "This is file13.txt" > file13.txt
git add file13.txt
git commit -m "Add file13.txt to new branch"
# Push the new branch to GitHub
git push origin new-branch

