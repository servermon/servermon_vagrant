class { '::servermon':
    ensure     => 'present',
    directory  => '/srv/servermon/servermon',
    secret_key => 'supersecretkey',
    db_name    => '/tmp/testdb',
    admins     => '( "Your admins", "admin@example.com")',
}

include ::apache
include ::apache::mod::proxy_http
include ::apache::mod::proxy
include ::apache::mod::rewrite
include ::apache::mod::ssl

apache::site { 'mysite.example.org':
    content => template('mysite.example.org.erb'),
}
