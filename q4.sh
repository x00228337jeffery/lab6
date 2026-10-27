#!/bin/bash
ME=$1; COLLAB=$2
gh api -X DELETE repos/$ME/lab6/collaborators/$COLLAB
gh api repos/$ME/lab6/collaborators --jq '.[].login'
git clone https://$COLLAB:$COLLAB_TOKEN@github.com/$ME/lab6.git collab-test
cd collab-test
git checkout -b collab-test2
echo "should fail" > fail.txt
git add fail.txt && git commit -m "should fail"
git push origin collab-test2
cd .. && rm -rf collab-test
