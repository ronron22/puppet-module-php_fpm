class php_fpm::install (

	$php_fpm_package    = hiera('php_fpm_package'),

	) inherits php_fpm {
        
		package { "$php_fpm_package": 
			ensure  =>  installed,
		}

}
