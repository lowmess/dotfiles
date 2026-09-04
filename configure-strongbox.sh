# create root folder
mkdir ~/.strongbox

# create a symlink for the SSH agent
ln -s ~/Library/Group\ Containers/group.strongbox.mac.mcguill/agent.sock ~/.strongbox/agent.sock

# add the agent to the SSH config
touch ~/.ssh/config
echo 'Host *\n   IdentityAgent ~/.strongbox/agent.sock' >> ~/.ssh/config

# enable the agent for the rest of this session (once dotfiles are installed, its in the PATH)
SSH_AUTH_SOCK=~/.strongbox/agent.sock
export SSH_AUTH_SOCK
