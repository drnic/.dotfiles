export EDITOR="/opt/local/bin/mate -w"
export GEM_OPEN_EDITOR="/opt/local/bin/mate"
export JAVA_HOME="/System/Library/Frameworks/JavaVM.framework/Home"


source ~/.dotfiles/ruby.sh
source ~/.dotfiles/rails.sh
source ~/.dotfiles/textmate.sh
source ~/.dotfiles/homebrew.sh
source ~/.dotfiles/git.sh
source ~/.dotfiles/heroku.sh
source ~/.dotfiles/misc.sh
source ~/.dotfiles/functions.sh

source ~/.dotfiles/bashprompt.sh

# Last
[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm