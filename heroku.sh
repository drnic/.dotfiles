if [ -n `which heroku` ]; then

  alias gph='git push heroku HEAD:master'
  alias h='heroku'

  function heroku_transfer {
    heroku sharing:add $1
    heroku sharing:transfer $1
    git config --add heroku.email $1
    git config --add heroku.password "$2"
  }

fi