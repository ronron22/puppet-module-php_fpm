class php_fpm::services (
        $enable = ::php_fpm::params::enable,
    ) {
    if $enable {
        service { 'php7.0-fpm':
          ensure  => running,
          enable  => true,
          restart => '/usr/bin/php7.0 -l -f /etc/php/7.0/fpm/php-fpm.conf && systemctl reload php7.0-fpm',
          #require => File['/etc/ssh/sshd_config'],
        }
    }
}
