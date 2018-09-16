class php_fpm (
        $nodename = hiera('nodename'),
        $php_fpm_package = hiera('php_fpm_package'),
        ) {
        contain ::php_fpm::install
        contain ::php_fpm::install_modules
        contain ::php_fpm::configure
}
