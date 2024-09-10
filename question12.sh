#!/bin/bash

# 1. 创建并切换到新分支 branch2
git checkout -b branch2

# 2. 创建并提交一个文件 file4
echo "This is file4" > file4
git add file4
git commit -m "Add file4"

# 3. 修改 file4
echo "This is a modification to file4" >> file4

# 4. 暂存更改并切换回 main 分支
git stash
git checkout main


