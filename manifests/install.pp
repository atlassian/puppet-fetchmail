# == Class fetchmail::install
#
# This class is called from fetchmail for install.
#
class fetchmail::install {

  package { $::fetchmail::package_name:
    ensure => present,
  }
}
