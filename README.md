### Set up a new machine

1. Run `xcode-select --install` (or otherwise install `git`)
1. Install [Strongbox](https://strongboxsafe.com/) via App Store
1. Configure and enable the [Strongbox SSH Agent](https://strongbox.reamaze.com/articles/ssh-agent)
   - Run `ln -s ~/Library/Group\ Containers/group.strongbox.mac.mcguill/agent.sock ~/.strongbox/agent.sock`
   - Run `SSH_AUTH_SOCK=~/.strongbox/agent.sock; export SSH_AUTH_SOCK;`
   - Copy your git SSH public key to `~/.ssh/alomas-git.pub` to enable git signing
1. Run `git@github.com:lowmess/dotfiles.git` from the home directory
1. Run `sh ./install.sh` from within the dotfiles repo
1. Have fun setting up all those apps you just downloaded
