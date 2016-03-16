source ~/dotfiles/utf-8

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

source ~/dotfiles/alias
source ~/dotfiles/osx-alias
source ~/dotfiles/osx-java

export EDITOR=vim
function vscode () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args "$@"; }

# Work

alias med='java7; cd ~/git/medusa/master'
alias kill-tomcat='echo SHUTDOWN | telnet localhost 8005'
alias gw='~/git/medusa/master/gradlew'
export GRADLE_OPTS=-XX:MaxPermSize=1G
export ANT_OPTS=-XX:MaxPermSize=1G

# ZSH

bindkey -e

autoload -U colors && colors

setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS
setopt rcquotes

source ~/dotfiles/zsh-history

#precmd () { echo -e "\033];${PWD}\007" }

# Delete key
bindkey "^[[3~" delete-char

# Prompt
source ~/.zsh/git-prompt.sh
PROMPT='%{$fg_bold[blue]%}%d%{$reset_color%}$([ $? = 0 ] && echo "🔹 " || echo "⁉️ ") '
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
