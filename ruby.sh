export RUBYOPT="rubygems"
export RBXOPT="-Xrbc.db -Xagent.start"

function glg() {
  gem list | grep $1
}

alias be="bundle exec"