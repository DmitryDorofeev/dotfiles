export XDG_CONFIG_HOME="$HOME/.config"
export ZSH="$HOME/.oh-my-zsh"

plugins=(
  git
  fzf-zsh-plugin
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias tmux="tmux -2"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# flutter
export PATH="$PATH:$HOME/Dev/flutter/bin"
export PATH="$PATH:$HOME/.pub-cache/bin"


export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# The next line updates PATH for client-keystone-auth.
if [ -f '/Users/dmitrydorofeev/vk-cloud-solutions/path.bash.inc' ]; then source '/Users/dmitrydorofeev/vk-cloud-solutions/path.bash.inc'; fi

export TEMPL_EXPERIMENT=rawgo
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"
export JAVA_HOME="/opt/homebrew/opt/openjdk@17"export PATH=~/.npm-global/bin:$PATH

export PATH=~/.npm-global/bin:$PATH

case "$TERM" in
    xterm-color|*-256color|xterm-ghostty) color_prompt=yes;;
esac

eval "$(starship init zsh)"
