#!/bin/bash
# Switch back to branch2
git checkout branch2
# Stage and commit the previously uncommitted changes
git add file4
git commit -m "Restore and commit uncommitted changes in file4"

