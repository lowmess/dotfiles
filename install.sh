# set up Zsh
touch $HOME/.zshrc
echo 'source $HOME/dotfiles/.zshrc' >> $HOME/.zshrc
source $HOME/.zshrc

# create iCloud alias at root
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs ~/iCloud

# set screenshots folder to iCloud
defaults write com.apple.screencapture location ~/iCloud/Photos/Screenshots

#create strongbox alias
ln -s ~/Library/Group\ Containers/group.strongbox.mac.mcguill/agent.sock ~/.strongbox/agent.sock

# install Homebrew & packages
cd $HOME/dotfiles/brew
sh ./brew.sh
cd -

# configure Ghostty
echo 'config-file = "~/dotfiles/settings/ghostty/config"' >> $HOME/Library/Application\ Support/com.mitchellh.ghostty/config

# create git config
touch $HOME/.gitconfig
echo '[include]\n  path = ~/dotfiles/git/.gitconfig' >> $HOME/.gitconfig

# set up fnm
fnm install 'lts/*'
fnm default 'lts/*'

# install global Node deps
npm-globals
