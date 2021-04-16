set -o vi
# Path to your oh-my-zsh installation.
export ZSH="/home/faizan/.oh-my-zsh"
export PATH=$PATH:~/.local/bin/statusbar
export PATH=$PATH:~/.local/bin/scripts
export PATH="/home/faizan/.local/bin:$PATH"

# Setting up Defaults
export EDITOR='nvim'
export TERMINAL="st-256color"
export BROWSER='firefox'
export MANPAGER='nvim +Man!'
export LANG='en_US.UTF-8'

export UPDATE_ZSH_DAYS=15

#export QT_QPA_PLATFORMTHEME='qt5ct'

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

## Import the colors.
# "${HOME}/.cache/wal/colors.sh"
#
## Create the alias.
#alias dmen='dmenu_run -nb "$color0" -nf "$color15" -sb "$color1" -sf "$color15"'

# Aliases
alias fz='nvim `find . | fzf --height=10`'

alias v='nvim'
alias vim='nvim'
alias :q='exit'


alias ll='exa --group-directories-first'
alias ls='exa -l --group-directories-first'
alias la='exa -a --group-directories-first'
alias al='exa -al --group-directories-first'

alias pac='sudo pacman'
alias clup='pac -Rns $(pac -Qdtq)'

alias rg='ranger'
alias vf='~/.config/vifm/scripts/vifmrun'
alias fehw='feh --bg-fill'
alias ttyc='tty-clock -c -s -S -b -t'

alias html='cd ~/Code/HTML'
alias c='cd ~/Code/C'

alias mindustry='./Games/mindustry-linux-64-bit/Mindustry'
# Autostart

#/opt/shell-color-scripts/colorscript.sh random
#echo ""
#fortune ~/.local/bin/quotes/quotes
fortune -s

### starship prompt ###
eval "$(starship init zsh)"

# Import colorscheme from 'wal' asynchronously
# &   # Run the process in the background.
# ( ) # Hide shell job control messages.
# Not supported in the "fish" shell.
(cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
#cat ~/.cache/wal/sequences

# To add support for TTYs this line can be optionally added.
source ~/.cache/wal/colors-tty.sh
wal-fill() {
    wal -n -i "$HOME/Wallpapers/Walls"
    feh --bg-fill "$(< "${HOME}/.cache/wal/wal")"
}
