
# ZSH
autoload -U colors && colors
autoload -U compinit && compinit
setopt CORRECT
setopt PROMPTSUBST
#setopt PROMPTPERCENT

# ZSH - History
export HISTFILE=~/.history
export HISTSIZE=1000
export SAVEHIST=1000
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

# Prompt
export PROMPT='%{$fg_bold[blue]%} 🙈  %{$reset_color%}'
export RPROMPT='%{$fg_bold[blue]%} %~ %{$reset_color%}'

# Basics
export PATH="~/bin:/usr/local/bin:/usr/local/share/npm/bin:$PATH"
export EDITOR='vim'

# Aliases
alias ll='ls -al'
alias l='ll'

# Java
alias java7="export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)"
java7

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-syntax-highlighting-config

# Set UTF-8 for mosh
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

