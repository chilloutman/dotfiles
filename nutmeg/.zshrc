archey3

export PATH="~/bin:$PATH"

source ~/dotfiles/base

export PROMPT=$'%B%~\n %F{red}> %f%b'

source ~/dotfiles/zsh-comp
source ~/dotfiles/zsh-base
source ~/dotfiles/zsh-history

alias ls='ls -h --color'
alias p='sudo pacman'
alias sc='sudo systemctl'
alias j='sudo journalctl'

export ABDUCO_CMD='/bin/zsh'

# TMUX
# If not inside a tmux session, and if no session is started, start a new session.
#if which tmux 2>&1 >/dev/null && test -z "$TMUX"; then
#    if tmux has-session 2>&1 >/dev/null; then
#        exec tmux attach
#    else
#        exec tmux new-session
#    fi
#fi

