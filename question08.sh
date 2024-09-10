
#!/bin/bash

# 1. 创建目录 dir2
mkdir -p dir2

# 2. 移动所有 .txt 文件到 dir2
mv *.txt dir2/

# 3. 暂存移动的文件
git add dir2/*.txt

# 4. 提交更改
git commit -m "Moved all .txt files to dir2"



