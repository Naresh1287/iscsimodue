class iscsi(
  $package_name = $::iscsi::params::package_name,
  $service_name = $::iscsi::params::service_name,
#  $test         = hiera('test')
)inherits ::iscsi::params {
      class { '::iscsi::install': }  
      class { '::iscsi::config': } 
      class { '::iscsi::service': }
      class { '::iscsi::exec': }

}



