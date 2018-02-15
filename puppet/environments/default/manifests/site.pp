package {'git':
  ensure => present
}

class{'nginx':
    manage_repo => true,
    package_source => 'nginx-stable'
}

nginx::resource::vhost{'default':
  www_root => '/var/www/',
  listen_port => 8000
}

vcsrepo {'/var/www':
  ensure   => latest,
  provider => git,
  source   => 'git://github.com/puppetlabs/exercise-webpage.git'
}
