class { '::servermon':
    ensure     => 'present',
    directory  => '/srv/servermon/servermon',
    secret_key => 'supersecretkey',
    db_name    => 'testdb',
    admins     => '( "Your admins", "admin@example.com")',
}
