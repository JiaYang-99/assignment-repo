#!/bin/bash


git branch -r


for branch in $(git branch -r | grep 'ready'); do
  git checkout main
  git merge $branch

  
  if [ $? -ne 0 ]; then
    echo "Merge conflict detected. Please resolve conflicts."
    
    git add .
    git commit -m "Resolved merge conflicts with $branch"
  fi

  
  branch_local=$(echo $branch | sed 's/origin\///')
  git branch -d $branch_local
  git push origin --delete $branch_local
done


for branch in $(git branch -r | grep 'update'); do
  branch_local=$(echo $branch | sed 's/origin\///')
  git checkout $branch_local
  git merge main
  git push origin $branch_local
done

