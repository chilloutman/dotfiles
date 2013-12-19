#if [ -f /home/lneiva/.bash_profile ]; then
#  . /home/lneiva/.bash_profile
#fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
export JAVA_HOME=/Library/Java/Home

alias ll='ls -al'
alias java6='export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home'
alias tmux-kill='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'
alias tmux-shindig='tmux source-file /p/finnova.www/tmux.conf'

# --- ZSH --- #

# History
export HISTFILE=~/.history
export HISTSIZE=1000
export SAVEHIST=1000
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY

# Delete key
bindkey "^[[3~" delete-char

# Prompt
source ~/.zsh/git-prompt.sh
PROMPT='%{$fg_bold[blue]%}%d%{$reset_color%}$(__git_ps1 " (%s)") ☕  '
setopt promptsubst
export GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUPSTREAM="auto"

# History
setopt HIST_FIND_NO_DUPS
setopt SHARE_HISTORY

autoload -U colors && colors
autoload -U compinit && compinit

#fpath=(/usr/local/share/zsh-completions $fpath)

# Highlighting
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/dotfiles/zsh-syntax-highlighting-config

#[[ -z "$TMUX" ]] && exec tmux

