source ~/dotfiles/utf-8

# Basics
export PATH="~/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH"
export EDITOR='vim'

# Aliases
source ~/dotfiles/alias
source ~/dotfiles/osx-java

# ZSH
autoload -U colors && colors

setopt rcquotes # Escape ' with ''
setopt CORRECT
setopt PROMPTSUBST

# Completions
fpath=(/usr/local/share/zsh-completions $fpath)
source ~/dotfiles/zsh-comp

# History
source ~/dotfiles/zsh-history

# Delete key
bindkey "^[[3~" delete-char

# Prompt
export PROMPT=' ▸ '
#export RPROMPT=' %~ '

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-syntax-highlighting-config

# VCS
source ~/dotfiles/zsh-vcs

archey -c
