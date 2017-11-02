ZSH_THEME="muse"

export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin

alias update-dev-env='source $DEV_ENV_HOME/-bashrc'

alias current='cd ~/develop/welt-news-android'
alias arnold='cd ~/develop/arnold'
alias bernard='cd ~/develop/bernard'
alias elsie='cd ~/develop/elsie'
alias toitrain='~/develop/PRIVATE/ToiTrain'

alias gpuo='git push -u origin $(git rev-parse --abbrev-ref HEAD):$(git rev-parse --abbrev-ref HEAD)'
alias gdto='git difftool'
alias gmt='git mergetool'
alias gmd='git merge develop'
alias gmm='git merge master'
alias gpr='git pull --rebase'
alias grc='git rebase --continue'
alias gca='$DEV_ENV_HOME/scripts/commit.sh'
alias gcrb='$DEV_ENV_HOME/scripts/clear_stale_remote_branches.sh'
alias gclb='$DEV_ENV_HOME/scripts/clear_stale_local_branches.sh'

alias b='./gradlew'
alias bt='./gradlew testProductionDebugUnitTest'
alias bct='./gradlew clean testProductionDebugUnitTest'

alias gclf='git clean -f'
alias goml='cd ~/develop/PRIVATE/Goml'
alias news='cd ~/develop/welt-news-android'
alias gcr='git checkout release'
alias gclf='git clean -f'
alias bastion='sh -A -v -i ~/.ssh/bastion-priv.key -p 2424 ec2-user@52.59.236.222'
alias clearDebugPort=lsof -i :8601
alias gmr=git merge release
alias ngrok=~/ngrok
