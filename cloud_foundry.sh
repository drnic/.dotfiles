export MY_CLOUDFOUNDRY=ec2-107-20-0-25.compute-1.amazonaws.com

function ssh_cf () {
  ssh ubuntu@$MY_CLOUDFOUNDRY
}

function vmc_my_cf () {
  vmc target $MY_CLOUDFOUNDRY
}

function vmc_public () {
  vmc target api.cloudfoundry.com
}
