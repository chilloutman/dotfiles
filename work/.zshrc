export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

source ~/dotfiles/base

PROMPT=$'%B%F{red}%~%b%f\n%B%F{red}$([ $? = 0 ] && echo " >" || echo "!>") %b%f'
source ~/dotfiles/zsh-vcs

source ~/dotfiles/zsh-base
source ~/dotfiles/zsh-comp
source ~/dotfiles/zsh-history
source ~/dotfiles/zsh-syntax-highlighting

