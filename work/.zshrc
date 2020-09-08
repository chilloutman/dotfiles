export PATH="/usr/local/share/git-core/contrib/diff-highlight:/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"

source ~/dotfiles/base

setopt PROMPT_SUBST
PROMPT=$'%B%F{red}%~%f%b\n%B%F{red}$([ $? = 0 ] && echo " >" || echo "!>") %f%b'
source ~/dotfiles/zsh-vcs

source ~/dotfiles/zsh-base
source ~/dotfiles/zsh-comp
source ~/dotfiles/zsh-history
source ~/dotfiles/zsh-syntax-highlighting

export NVM_DIR="$HOME/.nvm"
alias nvm-init='source /usr/local/opt/nvm/nvm.sh && nvm use'

alias waketime='sysctl -a | grep waketime'

export JAVA_HOME="$(/usr/libexec/java_home -v 11)"

