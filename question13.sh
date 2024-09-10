#!/bin/bash

git checkout -b new-branch
rm *.sh
git add .
git commit -m "Remove all .sh files"
echo "This is file13" > file13.txt
git add file13.txt
git commit -m "Add file13.txt"
