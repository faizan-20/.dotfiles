
# The following lines were added by compinstall
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*'
zstyle ':completion:*' max-errors 3
zstyle :compinstall filename '/home/faizan/.zshrc'
# History in cache directory:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
#PATH=$HOME/.local/.bin/statusbar:$PATH

# Alias
alias pac='sudo pacman'
alias v='nvim'
alias sudo='sudo '
alias ls='exa -l'
alias orphan='pacman -Qtdq | pacman -Rns -'

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

fortune -s
