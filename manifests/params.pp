# == Class fetchmail::params
#
# This class is meant to be called from fetchmail.
# It sets variables according to platform.
#
class fetchmail::params {
  $hiera = false
  case $::osfamily {
    'Debian': {
      $package_name = 'fetchmail'
    }
    'RedHat', 'Amazon': {
      $package_name = 'fetchmail'
    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
