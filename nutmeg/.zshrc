source ~/dotfiles/utf-8

# ZSH
bindkey -e
autoload -U colors && colors
autoload -U compinit && compinit

# ENV
export PROMPT="%{$fg_bold[red]%} > %{$reset_color%}"
export RPROMPT='%B%~%b'
export EDITOR='vim'

# ALIAS
alias ls='ls --color'
source ~/dotfiles/alias
alias y=yaourt

# TMUX
# If not inside a tmux session, and if no session is started, start a new session.
if which tmux 2>&1 >/dev/null && test -z "$TMUX"; then
    if tmux has-session 2>&1 >/dev/null; then
        exec tmux attach
    else
        exec tmux new-session
    fi
fi
