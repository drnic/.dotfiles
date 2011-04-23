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
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
rvm 1.9.2-p180
# rvm gemset use 1.9.2-p180@global
echo "Using "`ruby -v`
