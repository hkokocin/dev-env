ZSH_THEME="muse"

export ANDROID_HOME=~/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools/bin

alias update-dev-env='source $DEV_ENV_HOME/-bashrc'

alias android='cd ~/repositories/fluege-android'
alias goml='cd ~/repositories/PRIVATE/Goml'

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
alias gcr='git checkout release'
alias gclf='git clean -f'
alias clearDebugPort='lsof -i :8601'
alias gmr='git merge release'
alias dc='docker-compose'
alias bt='./gradlew testReleaseUnitTest'
alias grd='git pull --rebase origin develop'
alias py=python3

alias review='cd ~/repositories/fluege-review'

c(){
    cd $1
    ls
}

alias work='~/dev-env/scripts/work.sh'
alias home='~/dev-env/scripts/home.sh'
