GET_STALE_BRANCHES="git branch -r --merged | grep -v \"*\" | grep -v master | grep -v develop | grep -v release | grep -v hotfix/ | sed 's/origin\///'"
STALE_BRANCHES="$(eval $GET_STALE_BRANCHES)"
echo $STALE_BRANCHES
if [ "$STALE_BRANCHES" == "" ] 
  then 
    echo "no stale branches found"
    exit 0
fi

echo "Potentially stale \033[1;31mREMOTE\033[0m branches:\n\033[1;31m"
eval $GET_STALE_BRANCHES | xargs -n 1 echo
echo "\033[0m"
read -n1 -p "Do you want to delete these (y|n)? $ " ANSWER
echo ""
case $ANSWER in
    Y | y | "" ) eval $GET_STALE_BRANCHES | xargs -n 1 git branch -d;;
    * ) echo "Commit aborted";;
esac
