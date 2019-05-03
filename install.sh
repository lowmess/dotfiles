# Install Homebrew & Homebrew packages
cd $HOME/dotfiles/brew
sh ./brew.sh
cd -

# Set up zsh
touch $HOME/.zshrc
echo 'source $HOME/dotfiles/.zshrc' | cat - $HOME/.zshrc | sponge $HOME/.zshrc
source $HOME/.zshrc

# Set up nvm
mkdir -p $HOME/.nvm
nvm install 10
nvm alias default 10

# Install global Node deps
npm-globals

# create git config
touch $HOME/.gitconfig
printf '[include]\n  path = ~/dotfiles/git/.gitconfig' | cat - $HOME/.gitconfig | sponge $HOME/.gitconfig

# update hyper config
touch $HOME/.hyper.js
cp $HOME/dotfiles/.hyper.js $HOME/.hyper.js
