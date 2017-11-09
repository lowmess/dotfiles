# Install things with Homebrew
source "$HOME/dotfiles/brew/brew.sh"

# Set up nvm
mkdir -p ~/.nvm
nvm install 8
nvm alias default 8

# Install global Node deps
source $HOME/dotfiles/system/.function
npmglobals

# create config files
touch ~/.zshrc
echo 'source $HOME/dotfiles/.zshrc' | cat - ~/.zshrc | sponge ~/.zshrc

touch ~/.gitconfig
echo '[include]\n  path = ~/dotfiles/git/.gitconfig' | cat - ~/.gitconfig | sponge ~/.gitconfig

source $HOME/dotfiles/system/.alias
update-hyper

touch ~/.czrc
echo '{\n  "path": "cz-conventional-changelog"\n}' | cat - ~/.czrc | sponge ~/.czrc
