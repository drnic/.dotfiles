function use_textmate () {
  export EDITOR="/usr/local/bin/mate -w"
  export GEM_OPEN_EDITOR="/usr/local/bin/mate"
  alias tm_dialog=~/"Library/Application\ Support/TextMate/PlugIns/Dialog.tmplugin/Contents/Resources/tm_dialog"

  function m {
    if [ "$1" != "" ]; then
      mate $1
    else
      mate .
    fi
  }
}

function use_redcar_gem () {
  use_redcar
}

function use_redcar_dev () {
  export PATH="/Users/drnic/Projects/ruby_apps/redcar/bin:$PATH"
  use_redcar
}

function use_redcar () {
  export EDITOR="rvm jruby exec redcar --no-splash -w"
  export GEM_OPEN_EDITOR="redcar"

  function m {
    if [ "$1" != "" ]; then
      rvm jruby exec redcar --no-splash $1
    else
      rvm jruby exec redcar --no-splash .
    fi
  }

}


use_textmate

# don't try to run redcar if jruby not installed
# if rvm list strings | grep -q jruby
# then
#   use_redcar_dev
# else
#   use_textmate
# fi

alias et="m" # my brain still likes to type 'et' to get a text editor

