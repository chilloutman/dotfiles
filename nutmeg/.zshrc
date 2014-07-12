
export PATH=/root/bin:$PATH
export RPROMPT='%~'
export EDITOR='vim'

alias ll='ls -al'
alias l=ll
alias vi=vim
alias y=yaourt

# ZSH
autoload -U compinit && compinit

# TMUX
# If not inside a tmux session, and if no session is started, start a new session.
if which tmux 2>&1 >/dev/null && test -z "$TMUX"; then
    if tmux has-session 2>&1 >/dev/null; then
        exec tmux attach
    else
        exec tmux new-session
    fi
fi

