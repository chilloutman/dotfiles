source ~/dotfiles/utf-8

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
export ANT_OPTS='-Xms512M -Xmx3G'

source ~/dotfiles/alias
source ~/dotfiles/osx-alias
source ~/dotfiles/osx-java

export EDITOR=vim

alias med='java7; cd ~/git/medusa/medusa-suite;'
alias kill-tomcat='echo SHUTDOWN | telnet localhost 8005'

# --- ZSH --- #

bindkey -e

autoload -U colors && colors

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt rcquotes

source ~/dotfiles/zsh-history

# Delete key
bindkey "^[[3~" delete-char

# Prompt
source ~/.zsh/git-prompt.sh
PROMPT='%{$fg_bold[blue]%}%d%{$reset_color%} $([ $? = 0 ] && echo ">" || echo "😱 ") '
RPROMPT='$(__git_ps1 " (%s)")'
setopt promptsubst

export GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"

# Completions
fpath=(/usr/local/share/zsh-completions $fpath)
source ~/gotfiles/zsh-comp

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-syntax-highlighting-config

#[[ -z "$TMUX" ]] && exec tmux
