# Install fetchmail
class fetchmail::install {
  package {'fetchmail':
    ensure  => installed,
  }
}
