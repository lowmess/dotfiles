# set default shell to zsh
chsh -s $(which zsh)

# Install devtools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install things with Homebrew
brew install nvm yarn mas trash zsh-git-prompt zsh-syntax-highlighting autojump hub tree
brew cask install google-chrome atom hyper rightfont google-play-music-desktop-player dropbox bartender alfred 1password dash kap epichrome istat-menus transmission slack firefox figma vlc ngrok aerial

# git stuff
git config --global alias.eat 'stash'
git config --global alias.poop 'stash pop'
git config --global hub.protocol https

# Node Stuff
mkdir ~/.nvm
nvm install 6.9
nvm alias default 6.9
npm i -g np commitizen cz-conventional-changelog hpm-cli

# Atom plugins
apm i sync-settings

# Hyper plugins
hpm i hyperterm-material hyperterm-blink hyperterm-tab-icons hyperlinks

# Signin to MAS
mas signin alec@lowmess.com

# Install App Store apps
mas install 413857545 824183456 824171161 409789998 1106867065 1053031090 982710545

# create config files
echo 'source $HOME/dotfiles/.zshrc' > ~/.zshrc
cp -f .czrc ~
