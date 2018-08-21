export PATH="~/bin:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

source ~/dotfiles/base

export PROMPT='%B%F{blue}%~%f%b
%B ❯ %b'
source ~/dotfiles/zsh-vcs

source ~/dotfiles/zsh-base
source ~/dotfiles/zsh-comp
source ~/dotfiles/zsh-history
source ~/dotfiles/zsh-syntax-highlighting

archey -c -o
