source ~/dotfiles/utf-8

# ZSH
bindkey -e
autoload -U colors && colors
source ~/dotfiles/zsh-comp

# ENV
export PROMPT="%B%~%b
%{$fg_bold[red]%} > %{$reset_color%}"
#export RPROMPT='%B%~%b'
export EDITOR='vim'

export PATH="~/bin:$PATH"

# ALIAS
alias ls='ls --color'
source ~/dotfiles/alias
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
