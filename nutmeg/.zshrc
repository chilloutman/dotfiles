export PATH="~/bin:$PATH"

source ~/dotfiles/base

export PROMPT="%B%~%b
%{$fg_bold[red]%} > %{$reset_color%}"
#export RPROMPT='%B%~%b'

source ~/dotfiles/zsh-comp

alias ls='ls --color'
alias p=pacaur
alias sc='sudo systemctl'

# TMUX
# If not inside a tmux session, and if no session is started, start a new session.
if which tmux 2>&1 >/dev/null && test -z "$TMUX"; then
    if tmux has-session 2>&1 >/dev/null; then
        exec tmux attach
    else
        exec tmux new-session
    fi
fi
