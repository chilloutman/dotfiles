export PATH=/root/bin:$PATH

alias ll='ls -al'

[[ -z "$TMUX" ]] && exec tmux
