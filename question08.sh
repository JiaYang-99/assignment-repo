#!/bin/bash
# Create directory dir2
mkdir dir2
# Move all .txt files to dir2
mv *.txt dir2/
# Stage and commit the changes
git add dir2
git commit -m "Move .txt files to dir2 and commit"

