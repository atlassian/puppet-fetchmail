# puppet-fetchmail

####Table of Contents
1. [License](#license)
2. [Requirements](#requirements)
3. [Usage](#usage)

## License
```
                                 Apache License
                           Version 2.0, January 2004
                        http://www.apache.org/licenses/
```

## Requirements
* 

## Usage
### fetchmail
It only install fetchmail from default distribution repositories.

`include fetchmail`

### fetchmail::conf
Configures fetchmail by creating ~/.fetchmailrc file for user given as a name.
```
fetchmail::conf{'root':
  mail_server      => 'imap.gmail.com',
  mail_user        => 'snoopie',
  mail_user_passwd => 'XXXXX',
  procmail_rc      => '/home/doggie/procmailrc',
  mail_protocol    => 'IMAP'
}
```
Above will create /root/.fetchmailrc

Parameters:

  mail_server - name or IP of the server from which mails will be downloaded

  mail_protocol - IMAP (default) or POP3

  mail_user - user (on mail_server) for whom mails will be downloaded

  mail_user_passwd - password for above (mail_user) user

  procmail_rc - full path to rc file for procmail to make mail delivery
    possible
