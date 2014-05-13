# Creates configuration file (~/.fetchmail) in specified user homedir
#
define fetchmail::conf{
  file{"/home/$name/.fetchmailrc":
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    content=> template('fetchmail/fetchmailrc.erb');
  }
}
