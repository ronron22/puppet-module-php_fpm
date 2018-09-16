class php_fpm::configure (
    $nodename = hiera('nodename'),
    ) {

    include php_fpm::services

    file { "/etc/php/7.0":
      ensure => present,
      sourceselect => all,
      source => ["puppet:///modules/php_fpm/${nodename}/etc/php/7.0","/etc/php/7.0 "],
      recurse => true,
      notify   => Service['php7.0-fpm'],  
    }
}
