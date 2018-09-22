class php_fpm (
        
	include php_fpm::install
	include php_fpm::install_modules
	include php_fpm::config
	include php_fpm::service

}
