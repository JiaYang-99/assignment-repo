#!/bin/bash

# 1. 创建目录 dir2
mkdir dir2

# 2. 将所有以 .txt 结尾的文件移动到 dir2
mv *.txt dir2/

# 3. 将更改添加到 Git 暂存区
git add dir2/*.txt

# 4. 提交更改
git commit -m "Moved all .txt files to dir2"


