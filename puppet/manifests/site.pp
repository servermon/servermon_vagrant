class { '::servermon':
    ensure    => 'present',
    directory => '/srv/servermon',
}
