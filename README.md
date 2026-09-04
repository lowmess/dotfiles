### Set up a new machine

1. Run `xcode-select --install` (or otherwise install `git`)
1. Install [Strongbox](https://strongboxsafe.com/) via App Store
1. Enable the [Strongbox SSH Agent](https://strongbox.reamaze.com/articles/ssh-agent)
1. Run `sh ./configure-strongbox.sh`
1. Copy your git SSH public key to `~/.ssh/alomas-git.pub` to enable git signing
1. Run `git@github.com:lowmess/dotfiles.git` from the home directory
1. Run `sh ./install.sh` from within the dotfiles repo
1. Have fun setting up all those apps you just downloaded
