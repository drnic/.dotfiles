function ronin-enable () {
  ronin show $2 && ronin features:enable $2 $1
}
