function sc {
  if [ -x script/console ]; then
    script/console $1
  else
    if [ -x script/rails ]; then
      script/rails c $1
    else
      irb -rubygems -rmap_by_method $1
    fi
  fi
}

function gen {
  if [ -x script/generate ]; then
    script/generate $1
  else
    if [ -x script/rails ]; then
      script/rails g $1
    fi
  fi
}

function destroy {
  if [ -x script/generate ]; then
    script/destroy $1
  else
    if [ -x script/rails ]; then
      script/rails destroy $1
    fi
  fi
}

# tail log
alias taildev='tail -f log/development.log'
alias tailtest='tail -f log/test.log'
alias r='touch tmp/restart.txt'

