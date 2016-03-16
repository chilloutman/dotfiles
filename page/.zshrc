export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

source ~/dotfiles/base

PROMPT='$([ $? = 0 ] && echo " 🔹 " || echo "⁉️ ") '
source ~/dotfiles/zsh-vcs

source ~/dotfiles/zsh-base
source ~/dotfiles/zsh-comp
source ~/dotfiles/zsh-history
source ~/dotfiles/zsh-syntax-highlighting
