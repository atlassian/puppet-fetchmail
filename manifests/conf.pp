# Creates configuration file (~/.fetchmail) in specified user homedir
#
# Parameters:
#   mail_server - name or IP of the server from which mails will be downloaded
#   mail_protocol - IMAP (default) or POP3
#   mail_user - user (on mail_server) for whom mails will be downloaded
#   mail_user_passwd - password for above (mail_user) user
#   procmail_rc - full path to rc file for procmail to make mail delivery
#     possible
#
define fetchmail::conf(
  $mail_server,
  $mail_user,
  $mail_user_passwd,
  $procmail_rc,
  $mail_protocol = 'IMAP',
  $path = "/home/${name}/"
){
  file{"${path}/.fetchmailrc":
    ensure => 'present',
    owner  => "${name}",
    group  => 'root',
    mode   => '0600',
    content=> template('fetchmail/fetchmailrc.erb');
  }
}
