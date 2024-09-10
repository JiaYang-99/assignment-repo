#!/bin/bash

# 切换到 branch2
git checkout branch2

# 合并 branch3 到 branch2
git merge branch3

# 解决冲突后，添加并提交解决后的文件
git add <conflicted-file>
git commit -m "Resolved merge conflicts between branch3 and branch2"

# 删除 branch3
git branch -d branch3
