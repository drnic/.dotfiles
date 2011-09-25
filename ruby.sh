export RBXOPT="-Xrbc.db -Xagent.start"

function glg() {
  gem list | grep $1
}

alias be="bundle exec"

[[ -s $HOME/.rvm/scripts/rvm ]] && source $HOME/.rvm/scripts/rvm
rvm ruby-1.9.3
# rvm gemset use 1.9.2-p180@global
echo "Using "`ruby -v`
