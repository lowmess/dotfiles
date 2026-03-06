# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# source the zshrc to put brew into $PATH
source $HOME/.zshrc

# use brewfile to install a bunch of stuff
brew bundle
