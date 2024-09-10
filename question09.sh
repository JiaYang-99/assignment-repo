#!/bin/bash
# Create a new branch named branch1
git checkout -b branch1
# Create a new file named file3
echo "This is file3" > file3
# Stage and commit file3
git add file3
git commit -m "Add file3 in branch1"

