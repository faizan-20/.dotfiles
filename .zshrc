# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder

# Plugins
plugins=(nvm git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

# Locale
export LANG=en_US.UTF-8
# export LC_ALL=en_US.UTF-8

# Editor
export EDITOR='nvim'

# PATH
export PATH=$HOME/.local/bin:$HOME/.local/.bin/statusbar:$HOME/.local/.bin/executables:$PATH

# Aliases
alias pac='sudo pacman'
alias vi='nvim'
alias sudo='sudo '
alias ls='eza -l --group-directories-first --icons'
alias orphan='sudo pacman -Qtdq |sudo pacman -Rns -'
alias lg='lazygit'

# Functions
function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" --no-use # This loads nvm, without auto-using the default version

# typeset -ga __lazyLoadLabels=(nvm node npm npx pnpm yarn pnpx bun bunx)
#
# __load-nvm() {
#     export NVM_DIR="${NVM_DIR:-$HOME/.nvm}"
#
#     [ -s "$NVM_DIR/nvm.sh" ] && source "$NVM_DIR/nvm.sh"
#     [ -s "$NVM_DIR/bash_completion" ] && source "$NVM_DIR/bash_completion"
# }
#
# __work() {
#     for label in "${__lazyLoadLabels[@]}"; do
#         unset -f $label
#     done
#     unset -v __lazyLoadLabels
#
#     __load-nvm
#     unset -f __load-nvm __work
# }
#
# for label in "${__lazyLoadLabels[@]}"; do
#     eval "$label() { __work; $label \$@; }"
# done

# Starship and Zoxide
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
