if [ -n `which brew` ]; then

  if [ -f `brew --prefix`/etc/bash_completion ]; then
    . `brew --prefix`/etc/bash_completion
  fi
  source `brew --prefix`/Library/Contributions/brew_bash_completion.sh

  export PATH=`brew --prefix`/bin:$PATH

  if [ -n `which python` ]; then
    export PATH=$PATH:"`brew --prefix`/Cellar/python/2.7/bin"
  fi
  

fi