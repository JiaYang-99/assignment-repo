#!/bin/bash

# Step 1: Identify all branches
echo "Identifying all branches..."
git branch -r

# Step 2: Merge branches that start with 'ready' into main
for branch in $(git branch -r | grep 'ready'); do
  # Checkout the main branch
  git checkout main
  # Merge the ready branch into main
  git merge origin/$branch
  # Resolve conflicts if any
  if [ $? -ne 0 ]; then
    echo "Merge conflict detected in branch $branch. Please resolve manually."
    # After resolving conflicts
    git add .
    git commit -m "Resolved merge conflicts from $branch into main"
  fi
  # Delete the merged branch
  git branch -d $branch
  git push origin --delete $branch
done

# Step 3: Update branches that start with 'update' with latest main changes
for branch in $(git branch -r | grep 'update'); do
  # Checkout the update branch
  git checkout $branch
  # Merge the main branch into the update branch to update it
  git merge main
  # Resolve conflicts if any
  if [ $? -ne 0 ]; then
    echo "Merge conflict detected in branch $branch. Please resolve manually."
    # After resolving conflicts
    git add .
    git commit -m "Resolved merge conflicts and updated $branch with main"
  fi
  git push origin $branch
done

