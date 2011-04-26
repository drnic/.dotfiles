export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"
export PATH=$PATH":/usr/local/sbin"
[[ -d $HOME/bin ]] && export PATH=$PATH":$HOME/bin"

source ~/.dotfiles/ruby.sh
source ~/.dotfiles/rails.sh
source ~/.dotfiles/editor.sh
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/git.sh
source ~/.dotfiles/heroku.sh
source ~/.dotfiles/mysql.sh
source ~/.dotfiles/misc.sh
source ~/.dotfiles/node.sh
source ~/.dotfiles/engineyard.sh
source ~/.dotfiles/ronin.sh
source ~/.dotfiles/functions.sh
[[ -s ~/.dotfiles/development_setups.sh ]] && source ~/.dotfiles/development_setups.sh

source ~/.dotfiles/bashprompt.sh

# Last
