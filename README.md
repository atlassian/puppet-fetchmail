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
fetchmail::conf{'root':}
```
Above will create /root/.fetchmailrc
