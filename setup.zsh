DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "### DEV-ENV ###" >> ~/.zshrc
echo "export DEV_ENV_HOME=$DIR" >> ~/.zshrc
echo "source $DIR/.bashrc" >> ~/.zshrc
echo "### /DEV-ENV ###" >> ~/.zshrc

export DEV_ENV_HOME=$DIR
source $DIR/.bashrc

