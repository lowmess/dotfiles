# Install Homebrew & Homebrew packages
cd $HOME/dotfiles/brew
sh ./brew.sh
cd -

# Set up zsh
touch $HOME/.zshrc
echo 'source $HOME/dotfiles/.zshrc' >> $HOME/.zshrc
source $HOME/.zshrc

# create git config
touch $HOME/.gitconfig
echo '[include]\n  path = ~/dotfiles/git/.gitconfig' >> $HOME/.gitconfig

# Set up nvm
mkdir -p $HOME/.nvm
nvm install --lts
nvm alias default lts/*

# Install global Node deps
npm-globals
