#!/bin/bash
# Fetch the branch3 and branch2 branches
git fetch origin branch2
git fetch origin branch3
# Switch to branch2
git checkout branch2
# Merge branch3 into branch2, resolving conflicts if any
git merge branch3
# If conflicts occur, manually resolve them and then continue
git add .
git commit -m "Resolved merge conflicts and completed merge of branch3 into branch2"
# Delete branch3 after merging
git branch -d branch3
git push origin --delete branch3

