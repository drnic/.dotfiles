export RUBYOPT="rubygems"

function glg() {
  gem list | grep $1
}
