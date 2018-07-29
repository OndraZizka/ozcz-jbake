#!/usr/bin/env bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

$SCRIPT_DIR/rebuild.sh

#JBAKE_BASED=$HOME/uw/oz.cz/jbake-based
JBAKE_BASED=$SCRIPT_DIR/..

## Run the Texy converter
docker stop texy-service
docker run -d --name texy-service --rm -p 8022:80 ondrazizka/texy-service:latest

cd $JBAKE_BASED;
## Remove the old output and rebuild all
rm -rf output/ cache/ && jbake -b

## Update the web
TARGET_DIR=../github.io/
cd $TARGET_DIR
git co master
git pull

LAST_COMMIT_USED=`git log -1 --pretty=%B | grep 'LastCommit:' | cut -d':' -f1`
THIS_COMMIT_USED=`git --git-dir $JBAKE_BASED/.git rev-list HEAD^..HEAD`
if [ "" == "$LAST_COMMIT_USED" ] ; then
    SUMMARY='Update'
else
    SUMMARY=`git --git-dir $JBAKE_BASED/.git log --pretty=%B "$LAST_COMMIT_USED"..HEAD`;
fi

git rm -rf *
#cd -
#cp -rf output/* $TARGET_DIR
#cd $TARGET_DIR
cp -rf $JBAKE_BASED/output/* ./

git commit . -m "$SUMMARY$'\n'LastCommit:$THIS_COMMIT_USED"
git push origin master

## Tested, should work.
