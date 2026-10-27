#!/bin/bash
ME=$1; COLLAB=$2
gh api -X PUT repos/$ME/lab6/collaborators/$COLLAB -f permission=push
gh api repos/$ME/lab6/invitations --jq '.[].invitee.login'
