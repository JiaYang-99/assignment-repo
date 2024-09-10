#!/bin/bash
# Fetch the branch1 branch
git fetch origin branch1
# Switch to the main branch
git checkout main
# Merge branch1 into main, resolving conflicts if any
git merge branch1
git add .
git commit -m "Resolved merge conflicts and completed merge of branch1 into main"

