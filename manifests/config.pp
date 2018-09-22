class php_fpm::config (

	$nodename = hiera('nodename'),
	$configuration_directory = hiera('configuration_directory'),
	$service_name = hiera('php_fpm::service::service_name'),
    
	) inherits php_fpm {

    file { $configuration_directory :
      ensure => present,
      sourceselect => all,
      source => ["puppet:///modules/php_fpm/${nodename}/etc/php/7.0","/etc/php/7.0 "],
      recurse => true,
      notify   => Service[$service_name],  
    }

}
