export RUBYOPT="rubygems"
export RBXOPT="-Xrbc.db"

function glg() {
  gem list | grep $1
}
