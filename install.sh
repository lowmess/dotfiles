# Install things with Homebrew
source $HOME/dotfiles/brew/brew.sh

# Set up nvm
mkdir -p $HOME/.nvm
nvm install 8
nvm alias default 8

# Install global Node deps
source $HOME/dotfiles/system/.function
npmglobals

# create config files
touch $HOME/.zshrc
echo 'source $HOME/dotfiles/.zshrc' | cat - $HOME/.zshrc | sponge $HOME/.zshrc

touch $HOME/.gitconfig
echo '[include]\n  path = $HOME/dotfiles/git/.gitconfig' | cat - $HOME/.gitconfig | sponge $HOME/.gitconfig

source $HOME/dotfiles/system/.alias
update-hyper

touch $HOME/.czrc
echo '{\n  "path": "cz-conventional-changelog"\n}' | cat - $HOME/.czrc | sponge $HOME/.czrc
