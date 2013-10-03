PROMPT="%{$fg_bold[blue]%}%. 👾  %{$reset_color%}"
PATH=~/bin:/usr/local/share/npm/bin/:$PATH

# Set UTF-8 for mosh
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

alias ll='ls -al'
alias pg='postgres -D /usr/local/var/postgres'

export TODOTXT_DEFAULT_ACTION=ls
alias t='todo.sh'

# ZSH
autoload -U colors && colors
autoload -U compinit && compinit
setopt CORRECT
setopt HIST_FIND_NO_DUPS
