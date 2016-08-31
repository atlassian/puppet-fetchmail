# Class: fetchmail
# ===========================
#
# Full description of class fetchmail here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class fetchmail (
  $package_name = $::fetchmail::params::package_name,
  $hiera = $::fetchmail::params::hiera,
  $configs = {}
) inherits ::fetchmail::params {

  validate_hash($configs)
  validate_bool($hiera)
  validate_string($package_name)

  class { '::fetchmail::install': } ->
  Class['::fetchmail']

  if $hiera {
    $hiera_configs = hiera_hash('fetchmail::configs')
    create_resources('fetchmail::conf', $hiera_configs)
  } else {
    create_resources('fetchmail::conf', $configs)
  }
}
