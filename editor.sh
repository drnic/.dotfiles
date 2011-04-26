function use_textmate () {
  export EDITOR="/usr/local/bin/mate -w"
  export GEM_OPEN_EDITOR="/usr/local/bin/mate"
  alias tm_dialog=~/"Library/Application\ Support/TextMate/PlugIns/Dialog.tmplugin/Contents/Resources/tm_dialog"
}

function use_redcar_gem () {
  export EDITOR="rvm jruby exec redcar -w"
  export GEM_OPEN_EDITOR="redcar"
}

function use_redcar_dev () {
  export PATH="/Users/drnic/Projects/ruby_apps/redcar/bin:$PATH"
  export EDITOR="rvm jruby exec redcar -w"
  export GEM_OPEN_EDITOR="redcar"
}

if rvm list strings | grep jruby > /dev/null
then
  use_redcar_dev
else
  use_textmate
fi

alias et="$EDITOR ."

function m {
  if [ "$1" != "" ]; then
    $EDITOR $1
  else
    $EDITOR .
  fi
}
