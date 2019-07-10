# Install Homebrew & Homebrew packages
cd $HOME/dotfiles/brew
sh ./brew.sh
cd -

# Set up zsh
touch $HOME/.zshrc
echo 'source $HOME/dotfiles/.zshrc' | cat - $HOME/.zshrc | sponge $HOME/.zshrc
source $HOME/.zshrc

# create git config
touch $HOME/.gitconfig
printf '[include]\n  path = ~/dotfiles/git/.gitconfig' | cat - $HOME/.gitconfig | sponge $HOME/.gitconfig

# create symlinked hyper config
ln $HOME/dotfiles/.hyper.js $HOME/.hyper.js

# Set up nvm
mkdir -p $HOME/.nvm
nvm install 10
nvm alias default 10

# Install global Node deps
npm-globals
