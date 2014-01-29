
export PATH=/root/bin:$PATH
export RPROMPT='%~'

alias ll='ls -al'

# TMUX
if which tmux 2>&1 >/dev/null; then
    # If not inside a tmux session, and if no session is started, start a new session.
    test -z "$TMUX" && (tmux attach || tmux new-session)
fi

#[[ -z "$TMUX" ]] && exec tmux

