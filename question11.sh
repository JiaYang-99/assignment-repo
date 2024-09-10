#!/bin/bash
# Create and switch to a new branch named branch2
git checkout -b branch2
# Create and commit file4
echo "This is file4" > file4
git add file4
git commit -m "Add file4"
# Modify file4
echo "Modified content in file4" >> file4
# Switch back to the main branch without committing the changes
git checkout main

