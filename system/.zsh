# enable completion
autoload -Uz compinit && compinit

# z - jump around
export _Z_CMD='j'
source /usr/local/etc/profile.d/z.sh

# autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# syntax highlighting (should go last)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh