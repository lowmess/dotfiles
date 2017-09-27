# completion
autoload -Uz compinit && compinit

# aliases
alias git='hub'
alias ls='ls -AGF'
alias cz='git cz'
alias cza='git cz -a'
alias git-clean='git branch --merged | grep -Ev "(\*|master|develop)" | xargs -n 1 git branch -d'
alias git-purge='git branch | grep -v "master\|develop" | xargs git branch -d'
alias cz-init='commitizen init cz-conventional-changelog --save-dev --save-exact'
alias r='yarn run'
alias tree='tree -FC --filelimit=100 --dirsfirst --prune'

# functions
function weather () {
  curl "wttr.in/$1?0q"
}

# autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# git prompt
source /usr/local/opt/zsh-git-prompt/zshrc.sh

ZSH_THEME_GIT_PROMPT_PREFIX="$reset_color at "
ZSH_THEME_GIT_PROMPT_SUFFIX=")"
ZSH_THEME_GIT_PROMPT_SEPARATOR="("
ZSH_THEME_GIT_PROMPT_BRANCH="%{$fg_bold[white]%}"
ZSH_THEME_GIT_PROMPT_STAGED="%{$fg[red]%}%{●%G%}"
ZSH_THEME_GIT_PROMPT_CONFLICTS="%{$fg[red]%}%{✖%G%}"
ZSH_THEME_GIT_PROMPT_CHANGED="%{$fg[white]%}%{✚%G%}"
ZSH_THEME_GIT_PROMPT_BEHIND="%{↓%G%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{↑%G%}"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{…%G%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[white]%}%{✔%G%}"

local dir="%{$fg_bold[white]%}%1~$resetColor"

export PS1='$dir$(git_super_status) ► '

# nvm
export NVM_DIR="$HOME/.nvm"
. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm

autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" != "N/A" ] && [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm install
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc

# misc settings
export EDITOR='nano'
export VISUAL='nano'

# syntax highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
