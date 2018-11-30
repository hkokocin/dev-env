DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "### DEV-ENV ###" >> ~/.zshrc
echo "export DEV_ENV_HOME=$DIR" >> ~/.zshrc
echo "source $DIR/.bashrc" >> ~/.zshrc
echo "### /DEV-ENV ###" >> ~/.zshrc

export DEV_ENV_HOME=$DIR
source $DIR/.bashrc

# disable "Try new Safari" notifications
defaults write com.apple.coreservices.uiagent CSUIHasSafariBeenLaunched -bool YES
defaults write com.apple.coreservices.uiagent CSUIRecommendSafariNextNotificationDate -date 2050-01-01T00:00:00Z
defaults write com.apple.coreservices.uiagent CSUILastOSVersionWhereSafariRecommendationWasMade -float 10.99

