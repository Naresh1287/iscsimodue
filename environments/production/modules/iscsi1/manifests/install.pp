class iscsi::install(
String $package_name = $::iscsi::package_name
) { 
   package {'iscsi-package':
      ensure => present,
      name   => $package_name,
   }
}
