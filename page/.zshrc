source ~/dotfiles/utf-8

export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
export ANT_OPTS='-Xmx2G -XX:MaxPermSize=512m'

source ~/dotfiles/alias
source ~/dotfiles/osx-java

# --- ZSH --- #

autoload -U colors && colors
autoload -U compinit && compinit

setopt AUTO_PUSHD

source ~/dotfiles/zsh-history

# Delete key
bindkey "^[[3~" delete-char

# Prompt
source ~/.zsh/git-prompt.sh
PROMPT='%{$fg_bold[blue]%}%d%{$reset_color%} $([ $? = 0 ] && echo 👍 || echo 👎 )  '
RPROMPT='$(__git_ps1 " (%s)")'
setopt promptsubst
export GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"

#fpath=(/usr/local/share/zsh-completions $fpath)

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-syntax-highlighting-config

#[[ -z "$TMUX" ]] && exec tmux
