!/bin/sh
BRANCH=`git branch | grep '^\*' | sed 's/.*\///g' | cut -f1,2 -d-`
MESSAGE="[$BRANCH] $1"
echo "Commitng and pushing with the following message:\n\n$MESSAGE\n"

read -p "Do you want to continue (y|n)? $ " ANSWER
case $ANSWER in
    Y | y | "" ) git commit -am "$MESSAGE" && git push -u origin $(git rev-parse --abbrev-ref HEAD):$(git rev-parse --abbrev-ref HEAD);;
    * ) echo "Commit aborted";;
esac
