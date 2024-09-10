#!/bin/bash
git clone https://github.com/ian-knight-uofa/git-practice-01.git
cd git-practice-01

git checkout main
git merge branch1
git add <conflicted-file>
git commit -m "Resolved merge conflicts between branch1 and main"
