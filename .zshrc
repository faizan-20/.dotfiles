# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

zstyle ':omz:plugins:nvm' lazy yes
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search nvm)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8
export EDITOR='nvim'

PATH=$HOME/.local/.bin/statusbar:$PATH
PATH=$HOME/.local/.bin/executables:$PATH

# Alias
alias pac='sudo pacman'
alias vi='nvim'
alias sudo='sudo '
alias ls='eza -l --group-directories-first --icons'
alias orphan='sudo pacman -Qtdq |sudo pacman -Rns -'


#export NVM_DIR="$HOME/.nvm"
#[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
#[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
