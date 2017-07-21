export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/share/npm/bin:$PATH"
export HOMEBREW_CACHE=/Volumes/Ext/Caches/Homebrew
export ANDROID_HOME=/Volumes/Ext/Android

source ~/dotfiles/base

setopt PROMPT_SUBST
PROMPT=$'%B%F{red}%~%f%b\n%B%F{red}$([ $? = 0 ] && echo " >" || echo "!>") %f%b'
source ~/dotfiles/zsh-vcs

source ~/dotfiles/zsh-base
source ~/dotfiles/zsh-comp
source ~/dotfiles/zsh-history
source ~/dotfiles/zsh-syntax-highlighting

export NVM_DIR="$HOME/.nvm"
source /usr/local/opt/nvm/nvm.sh

alias waketime='sysctl -a | grep waketime'

