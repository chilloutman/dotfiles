
export PATH=/root/bin:$PATH
export RPROMPT='%~'

alias ll='ls -al'

# If not inside a tmux session, and if no session is started, start a new session.
if which tmux 2>&1 >/dev/null && test -z "$TMUX"; then
    if tmux has-session 2>&1 >/dev/null; then
        exec tmux attach
    else
        exec tmux new-session
    fi
fi

#[[ -z "$TMUX" ]] && exec tmux

