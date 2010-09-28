function sc {
  if [ -x script/console ]; then
    script/console $1 $2 $3 $4 $5 $6 $7 $8 $9
  else
    if [ -x script/rails ]; then
      script/rails c $1 $2 $3 $4 $5 $6 $7 $8 $9
    else
      irb -rubygems -rmap_by_method $1
    fi
  fi
}

function gen {
  if [ -x script/generate ]; then
    script/generate $1 $2 $3 $4 $5 $6 $7 $8 $9
  else
    if [ -x script/rails ]; then
      script/rails g $1 $2 $3 $4 $5 $6 $7 $8 $9
    fi
  fi
}

function destroy {
  if [ -x script/generate ]; then
    script/destroy $1 $2 $3 $4 $5 $6 $7 $8 $9
  else
    if [ -x script/rails ]; then
      script/rails destroy $1 $2 $3 $4 $5 $6 $7 $8 $9
    fi
  fi
}

# tail log
alias taildev='tail -f log/development.log'
alias tailtest='tail -f log/test.log'
alias r='touch tmp/restart.txt'

