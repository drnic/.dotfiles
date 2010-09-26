export RUBYOPT="rubygems"
export RUBYLIB="test:$RUBYLIB"

function glg() {
  gem list | grep $1
}
