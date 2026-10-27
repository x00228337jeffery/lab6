#!/bin/bash
ME=$1
gh issue create --repo $ME/lab6 \
  --title "create helloworld echo file" \
  --body "echo hello Pearse from lab6" \
  --assignee @me --label enhancement
gh issue list --repo $ME/lab6
