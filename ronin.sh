function ronin-enable () {
  ronin show $2 && ronin features:enable $2 $1
}


alias ronin='rvm ruby-1.8.7p334@ey_ronin-cli-ronin exec ronin'
