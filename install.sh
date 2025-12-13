# install Homebrew & packages
cd $HOME/dotfiles/brew
sh ./brew.sh
cd -

# set up Zsh
touch $HOME/.zshrc
echo 'source $HOME/dotfiles/.zshrc' >> $HOME/.zshrc
source $HOME/.zshrc

# configure Ghostty
echo 'config-file = "~/dotfiles/settings/ghostty/config"' >> $HOME/Library/Application\ Support/com.mitchellh.ghostty/config

# create git config
touch $HOME/.gitconfig
echo '[include]\n  path = ~/dotfiles/git/.gitconfig' >> $HOME/.gitconfig

# set up nvm
mkdir -p $HOME/.nvm
nvm install --lts
nvm alias default lts/*

# install global Node deps
npm-globals
