setopt appendhistory

# some useful options (man zshoptions)
setopt autocd extendedglob nomatch menucomplete
setopt interactive_comments
stty stop undef		# Disable ctrl-s to freeze terminal.
zle_highlight=('paste:none')

# beeping is annoying
unsetopt BEEP

# completions
# zstyle ':completion::complete:lsof:*' menu yes select
# compinit
autoload -Uz compinit && compinit
zmodload zsh/complist
_comp_options+=(globdots)		# Include hidden files.
zstyle ':completion:*' menu select

autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

# Bind Shift Tab to reverse cycle
bindkey '\e[Z' reverse-menu-complete

# Colors
autoload -Uz colors && colors

# Useful Functions
source "$ZDOTDIR/zsh_functions"
source "$ZDOTDIR/zsh_aliases"

# Plugins
zsh_add_plugin "zsh-users/zsh-autosuggestions"
zsh_add_plugin "zsh-users/zsh-syntax-highlighting"
zsh_add_plugin "hlissner/zsh-autopair"

# Environment variables set everywhere
export EDITOR="nvim"
export TERMINAL="alacritty"
export BROWSER="brave-browser"
export I3BLOCKS="$HOME/.config/i3blocks/blocks"

# Global variables
export LESSHISTFILE=-
export QT_QPA_PLATFORMTHEME=qt5ct
export WGETRC="$HOME/.config/wget/.wgetrc"

# Add to paths
export PATH="$HOME/.local/bin:$PATH"
export SPICETIFY_INSTALL="$HOME/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"

# Starship prompt
eval "$(starship init zsh)"
fm6000 -c random -r
