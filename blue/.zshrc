source ~/dotfiles/utf-8

# ZSH
autoload -U colors && colors

setopt CORRECT
setopt PROMPTSUBST

fpath=(/usr/local/share/zsh-completions $fpath)
autoload -U compinit && compinit

source ~/dotfiles/zsh-history

# Prompt
export PROMPT=' ➤ '
export RPROMPT=' %~ '

# Basics
export PATH="~/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH"
export EDITOR='vim'

# Aliases
alias ls='ls -G'
source ~/dotfiles/alias
source ~/dotfiles/osx-java

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-syntax-highlighting-config

archey -c
