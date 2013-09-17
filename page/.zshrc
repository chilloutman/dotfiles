#if [ -f /home/lneiva/.bash_profile ]; then
#  . /home/lneiva/.bash_profile
#fi

export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH
export JAVA_HOME=/Library/Java/Home

alias ll='ls -al'

# --- ZSH --- #

#source ~/.zsh/git-prompt/zshrc.sh

# Prompt
source ~/.zsh/git-prompt.sh
PROMPT='%{$fg_bold[blue]%}%1~%{$reset_color%}$(__git_ps1 " (%s)") ☕  '
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
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main pattern)
ZSH_HIGHLIGHT_STYLES[cursor]='none'
ZSH_HIGHLIGHT_STYLES[alias]='none'
ZSH_HIGHLIGHT_STYLES[builtin]='none'
ZSH_HIGHLIGHT_STYLES[reserved-word]='none'

ZSH_HIGHLIGHT_STYLES[command]='none'
ZSH_HIGHLIGHT_STYLES[precommand]='underline'

ZSH_HIGHLIGHT_STYLES[path]='fg=green'
ZSH_HIGHLIGHT_STYLES[path_prefix]='fg=green,underline'
ZSH_HIGHLIGHT_STYLES[path_approx]='fg=green,underline'

ZSH_HIGHLIGHT_STYLES[single-quoted-argument]='fg=cyan'
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]='fg=blue'
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]='fg=cyan,bold'
ZSH_HIGHLIGHT_STYLES[globbing]='fg=blue,bold'

# /Highlighting

