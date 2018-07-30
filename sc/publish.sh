#!/usr/bin/env bash

set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

#$SCRIPT_DIR/rebuild.sh

# JBAKE_BASED=$HOME/uw/oz.cz/jbake-based
JBAKE_BASED=$SCRIPT_DIR/..
WEB_CONTENT_REPO=$JBAKE_BASED/../web-wildfly-git

if [ -f $JBAKE_BASED/content/pages/.jbakeignore ] ; then
    echo "Seems like you forgot to enable the pages repo :) $JBAKE_BASED/content/pages/.jbakeignore"; exit;
fi

## Run the Texy converter
docker stop texy-service
docker run -d --name texy-service --rm -p 8022:80 ondrazizka/texy-service:latest

cd $JBAKE_BASED;
## Remove the old output and rebuild all
if [ "$1" != "noBake" ] ; then
    rm -rf output/ cache/   \
      && echo -e "\n=====================================\n  Baking!\n=====================================\n" \
      && jbake -b
fi

## Update the web
TARGET_DIR=../github.io/
cd $TARGET_DIR
echo -e "\n=====================================\n  Pulling changes from the repo, if any.\n=====================================\n" \
git co master
git pull

## Last web source commit
LAST_WEB_COMMIT=`git log -1 --pretty=%B | grep 'LastCommit:' | cut -d':' -f2`
THIS_WEB_COMMIT=`git --git-dir $JBAKE_BASED/.git rev-list HEAD^..HEAD`
if [ "" == "$LAST_WEB_COMMIT" ] ; then
    SUMMARY_WEB='Update (unknown previous commit in the web source)'
elif [ "$LAST_WEB_COMMIT" == "$THIS_WEB_COMMIT" ] ; then
    SUMMARY_WEB="None web source changes - maybe only content was changed."
else
    ##  Git messages from the web source dir;  remove empty lines and add bullets.
    SUMMARY_WEB=`git --git-dir $JBAKE_BASED/.git log --pretty=%B "$LAST_WEB_COMMIT"..HEAD | grep -v -e '^[[:space:]]*$' | sed 's#^# * \0#g'`;
fi
echo "Changes in the web sources from last commit used $LAST_WEB_COMMIT till current commit $THIS_WEB_COMMIT:"
echo "$SUMMARY_WEB"


## Last content commit:
LAST_CONTENT_COMMIT=`git log -1 --pretty=%B | grep 'LastCommit.Content:' | cut -d':' -f2`
THIS_CONTENT_COMMIT=`git --git-dir $WEB_CONTENT_REPO/.git rev-list HEAD^..HEAD`
if [ "" == "$LAST_CONTENT_COMMIT" ] ; then
    SUMMARY_CONTENT='Update (unknown previous commit in the web source)'
elif [ "$LAST_CONTENT_COMMIT" == "$THIS_CONTENT_COMMIT" ] ; then
    SUMMARY_CONTENT="No content changes - maybe only web source was changed."
else
    ##  Git messages from the web source dir;  remove empty lines and add bullets.
    SUMMARY_CONTENT=`git --git-dir $WEB_CONTENT_REPO/.git log --pretty=%B "$LAST_CONTENT_COMMIT"..HEAD | grep -v -e '^[[:space:]]*$' | sed 's#^# * \0#g'`;
fi
echo "Changes in the content from last commit $LAST_CONTENT_COMMIT till current commit $THIS_CONTENT_COMMIT:"
echo "SUMMARY_CONTENT"


echo "Deleting old files, overwriting with new ones.";
rm -rf *
#cd -
#cp -rf output/* $TARGET_DIR
#cd $TARGET_DIR
cp -rf $JBAKE_BASED/output/* ./

git commit . -m "$SUMMARY_WEB"$'\n'"LastCommit.Web:$THIS_WEB_COMMIT"$'\n'"$SUMMARY_CONTENT"$'\n'"LastCommit.Content:$THIS_CONTENT_COMMIT"
git push origin master

## Tested, should work.
