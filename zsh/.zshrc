set -o vi
# Path to your oh-my-zsh installation.
export ZSH="/home/faizan/.oh-my-zsh"
export PATH=$PATH:~/.local/bin/statusbar

# Setting up Defaults
export EDITOR='nvim'
export TERMINAL="alacritty"
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export LANG='en_US.UTF-8'

export UPDATE_ZSH_DAYS=15

ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Aliases
alias fz='nvim `find . | fzf --height=10`'

alias v='nvim'
alias vim='nvim'
alias :q='exit'


alias ll='exa --group-directories-first'
alias ls='exa -l --group-directories-first'
alias la='exa -a --group-directories-first'
alias lal='exa -al --group-directories-first'

alias pac='sudo pacman'
alias clup='pac -Rns $(pac -Qdtq)'

alias rg='ranger'
alias vf='~/.config/vifm/scripts/vifmrun'

alias html='cd ~/Code/HTML'
alias c='cd ~/Code/C'

# Autostart

#/opt/shell-color-scripts/colorscript.sh random
#echo ""
#fortune ~/.local/bin/quotes/quotes
fortune -s

### starship prompt ###
eval "$(starship init zsh)"
