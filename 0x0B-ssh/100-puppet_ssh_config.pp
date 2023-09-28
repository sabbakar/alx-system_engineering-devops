# A script to make changes to the configuration file.
# Requirements:

# Your SSH client configuration must be configured to use the private key ~/.ssh/school
# Your SSH client configuration must be configured to refuse to authenticate using a password
file {'/root/.ssh/config':
  ensure  => present,
  content => 'Host *\n IdentityFile ~/.ssh/school \n
              PasswordAuthentication no',
  }
