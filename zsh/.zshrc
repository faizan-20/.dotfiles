set -o vi
#PATH="$HOME/.local/bin${PATH:+:${PATH}}"
export PATH=$PATH:~/.local/bin/statusbar
export PATH=$PATH:~/.local/bin/scripts
export PATH="/home/faizan/.local/bin:$PATH"

# Setting up Defaults
export EDITOR='nvim'
export TERMINAL="alacritty"
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export LANG='en_US.UTF-8'

autoload -U compinit && compinit -u
zstyle ':completion:*' menu select
# Auto complete with case insenstivity
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Enable searching through history
bindkey '^R' history-incremental-pattern-search-backward

# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history


# Aliases
alias fz='nvim `find . | fzf --height=10`'

alias v='nvim'
alias vim='nvim'
alias :q='exit'

alias ll='exa --group-directories-first'
alias ls='exa -l --group-directories-first'
alias la='exa -a --group-directories-first'
alias al='exa -al --group-directories-first'

alias wp='wpg -s ~/Wallpapers/Walls/ ; timeout 0.5s xsettingsd -c ~/.config/xsettingsd/xsettingsd.conf ; feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"'

alias pac='sudo pacman'
alias clup='pac -Rns $(pac -Qdtq)'

alias rg='ranger'
alias vf='~/.config/vifm/scripts/vifmrun'
alias fehw='feh --bg-fill'
alias ttyc='tty-clock -c -s -S -b -t'

alias c='cd ~/Code/C'

### Autostart ###
fortune -s

### Plugins ###
source /home/faizan/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
### starship prompt ###
eval "$(starship init zsh)"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.config/wpg/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.config/wpg/sequences &

# To add support for TTYs this line can be optionally added.
#source ~/.cache/wal/colors-tty.sh
