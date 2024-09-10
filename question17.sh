#!/bin/bash

# Create branch1 and modify files
git checkout -b branch1
# Remove dir2 and foo, and move foo from dir2 to dir1
rm -r dir1/dir2
mv dir1/dir2/foo dir1/
# Remove bar_copy from dir3
rm dir3/bar_copy
# Create a new file named newfile1
echo "This is newfile1" > newfile1
# Stage and commit changes in branch1
git add .
git commit -m "Modify branch1: remove dir2, move foo, remove bar_copy, add newfile1"

# Create branch2 and modify files
git checkout main
git checkout -b branch2
# Rename foo to foo_modified in dir2
mv dir1/dir2/foo dir1/dir2/foo_modified
# Remove bar_copy and add newfile2 in dir3
rm dir3/bar_copy
rm dir3/bar
echo "This is newfile2" > dir3/newfile2
# Stage and commit changes in branch2
git add .
git commit -m "Modify branch2: rename foo to foo_modified, remove bar_copy, add newfile2"

