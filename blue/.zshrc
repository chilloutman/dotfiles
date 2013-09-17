PROMPT="%{$fg_bold[blue]%}%. 👾  %{$reset_color%}"
PATH=/usr/local/share/npm/bin/:$PATH

# Set UTF-8 for mosh
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

alias ll='ls -al'

# ZSH
autoload -U colors && colors
autoload -U compinit && compinit
setopt CORRECT
setopt HIST_FIND_NO_DUPS
