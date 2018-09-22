class php_fpm::install_modules (

	$php_fpm_modules = hiera('php_fpm_modules'),
    
	) inherits php_fpm {

    $php_fpm_modules.each |String $module|{
        package { "$module":
          ensure  =>  installed,
         }
    }

}
