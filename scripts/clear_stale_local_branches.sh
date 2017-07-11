STALE_BRANCHES="$(git branch --merged | grep -v "*" | grep -v master | grep -v develop | grep -v release | grep -v hotfix/)"
if [ "$STALE_BRANCHES" == "" ] 
  then 
    echo "no stale branches found"
    exit 0
fi

echo "Potentially stale branches:\n\033[0;33m"
git branch --merged | grep -v "*" | grep -v master | grep -v develop | grep -v release | grep -v hotfix/ | xargs -n 1 echo
echo "\033[0m"
read -n1 -p "Do you want to delete these (y|n)? $ " ANSWER
echo ""
case $ANSWER in
    Y | y | "" ) git branch --merged | grep -v "*" | grep -v master | grep -v develop | grep -v release | grep -v hotfix/ | xargs -n 1 git branch -d;;
    * ) echo "Commit aborted";;
esac
