class php_fpm::install (
    $nodename           = hiera('nodename'),
    $php_fpm_package    = hiera('php_fpm_package'),
    ) {

        include php_fpm::services
        
        package { "$php_fpm_package": 
          ensure  =>  installed,
        }
}
