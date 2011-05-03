function ronin-enable () {
  ronin show $2 && ronin features:enable $2 $1
}

alias ronin='rvm 1.8.7 exec ronin'
