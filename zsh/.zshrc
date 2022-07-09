# Use powerline
USE_POWERLINE="false"
export PATH=~/.local/.bin/:$PATH
export PATH=~/.local/.bin/statusbar/:$PATH
export PATH=~/.local/.bin/scripts/:$PATH

export PATH=$HOME/dev/flutter/bin:$PATH
#export PATH=$HOME/dev/android-studio/bin:$PATH
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

# Alias
alias pac='sudo pacman'
alias ls='exa -l --icons --group-directories-first'
alias v='nvim'
alias sudo='sudo '

fortune -s
