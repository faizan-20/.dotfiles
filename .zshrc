# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode reminder

# Plugins
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)
source $ZSH/oh-my-zsh.sh

# Locale
# export LANG=en_US.UTF-8
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

lazynvm() {
  unset -f nvm node npm
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  lazynvm 
  nvm $@
}
 
node() {
  lazynvm
  node $@
}
 
npm() {
  lazynvm
  npm $@
}

npx() {
  lazynvm
  npx $@
}

# Starship and Zoxide
eval "$(zoxide init --cmd cd zsh)"
eval "$(starship init zsh)"
