function use_textmate () {
  export EDITOR_NAME="mate"
  export EDITOR="/usr/local/bin/mate -w"
  export GEM_OPEN_EDITOR="/usr/local/bin/mate"
  alias et="mate ."
  alias tm_dialog=~/"Library/Application\ Support/TextMate/PlugIns/Dialog.tmplugin/Contents/Resources/tm_dialog"
}

function use_redcar () {
  export EDITOR_NAME="redcar"
  export EDITOR="redcar -w"
  export GEM_OPEN_EDITOR="redcar"
  alias et="redcar ."
}

function m {
  if [ "$1" != "" ]; then
    $EDITOR_NAME $1
  else
    $EDITOR_NAME .
  fi
}


use_redcar