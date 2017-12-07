class iscsi(
  $package_name = $::iscsi::params::package_name,
  $service_name = $::iscsi::params::service_name,
#  $test         = hiera('test')
)inherits ::iscsi::params {
      class { '::iscsi::install': }  
      class { '::iscsi::config': } 
      class { '::iscsi::service': }
      class { '::iscsi::exec': }
     


#     Class ['::iscsi::install'] 
#    -> Class ['::iscsi::config']
#    ~> Class ['::iscsi::service']
#    -> Class ['iscsi']

#   file { 'initiatorname.iscsi':
#       path    => "/etc/iscsi/initiatorname.iscsi",
#       ensure  => present,
#       content => template('iscsi/initiatorname.iscsi.erb')
#       notify  => Service['open-iscsi'],
#  }
   
#   file { 'iscsid.conf':
#       path    => "/etc/iscsi/iscsid.conf",
#       ensure  => present,
#       content => template('iscsi/iscsid.conf.erb')
#       notify  => Service['open-iscsi'],
#  }


}



