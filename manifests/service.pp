class php_fpm::services (

	$service_name   = hiera('service_name'),
	$service_enable = hiera('service_enable'),
	$service_ensure = hiera('service_ensure'),
	$service_manage = hiera('service_manage'),

	) {

	if ! ($service_ensure in [ 'running', 'stopped' ]) {
		fail('service_ensure parameter must be running or stopped')
	}
  if $service_manage == true {
    service { $service_name:
		  ensure  => $service_ensure,
      enable  => $service_enable,
		  provider => systemd,
			require => Class["accounts"],
      #hasstatus  => true,
      #hasrestart => true,
    }
  }

}
