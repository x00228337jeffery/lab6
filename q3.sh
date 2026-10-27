#!/bin/bash
ME=$1; COLLAB=$2
gh api repos/$ME/lab6/invitations --jq '.[].invitee.login'
gh api repos/$ME/lab6/collaborators --jq '.[].login'
git clone https://$COLLAB:$COLLAB_TOKEN@github.com/$ME/lab6.git collab-test
cd collab-test
git checkout -b collab-test
echo "collab was here" > collab.txt
git add collab.txt && git commit -m "collab push test"
git push origin collab-test
git push origin --delete collab-test
cd .. && rm -rf collab-test
