# A script to make changes to the configuration file.
# Requirements:

# Your SSH client configuration must be configured to use the private key ~/.ssh/school
# Your SSH client configuration must be configured to refuse to authenticate using a password
file {'some changes':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  content => '
      IdentityFile ~/.ssh/school
      PasswordAuthentication no',
  }
