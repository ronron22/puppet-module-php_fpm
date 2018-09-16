class php_fpm::install_modules (
    $php_fpm_modules = hiera('php_fpm_modules'),
    ) {

    include php_fpm::services

    $php_fpm_modules.each |String $module|{
        package { "$module":
          ensure  =>  installed,
         }
    }
}
