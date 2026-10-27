#!/bin/bash
ME=$1
gh pr create --repo $ME/lab6 --base main --head Q12345 \
  --title "Merge Q12345 into main" --body "Adds lab6 answers q1-q5"
gh pr list --repo $ME/lab6
