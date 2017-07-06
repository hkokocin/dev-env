!/bin/sh
BRANCH=`git branch | grep '^\*' | sed 's/.*\///g' | cut -f1,2 -d-`
MESSAGE="[$BRANCH] $1"
echo "Committing and pushing with the following message:\n\n\033[1;32m$MESSAGE\033[0m\n"

read -n1 -p "Do you want to continue (y|n)? $ " ANSWER
echo""
case $ANSWER in
    Y | y | "" ) git commit -am "$MESSAGE" && git push -u origin $(git rev-parse --abbrev-ref HEAD):$(git rev-parse --abbrev-ref HEAD);;
    * ) echo "Commit aborted";;
esac
