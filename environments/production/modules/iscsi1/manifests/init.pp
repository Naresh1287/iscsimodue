class iscsi(
#  string $initiatorname = hiera('initiatorname')
  $package_name   = $::iscsi::params::package_name,
  $service_name   = $::iscsi::params::service_name,
#  Hash $initiatorname,
  $initiatorname=hiera('initiatorname')
)inherits ::iscsi::params {
      class { '::iscsi::install': }  
      class { '::iscsi::config': } 
      class { '::iscsi::service': }
#      class { '::iscsi::exec': }
   
        
# create_resource(::iscsi::vhost, $initiatorname)
#     Class ['::iscsi::install'] 
#    -> Class ['::iscsi::config']
#    ~> Class ['::iscsi::service']
#    -> Class ['iscsi']
}





















#          package { 'open-iscsi':
#              name => $iscsiname,
#              ensure => present,
#}

#file { 'initiatorname.iscsi':
#    path    => "/etc/iscsi/initiatorname.iscsi",
#    ensure  => present,
#    source  => 'puppet:///modules/iscsi/initiatorname.iscsi',
#    notify  => Service['open-iscsi'],
#}
#
#file { 'iscsid.conf':
#    path    => "/etc/iscsi/iscsid.conf",
#    ensure  => present,
#    source  => 'puppet:///modules/iscsi/iscsi.conf',
#    notify  => Service['open-iscsi'],
#}


        
#service { 'open-iscsi':
#    name          => $iscsiname,
#    hasrestart    => true,
#}

#exec {'iscsiadm -m discovery -t sendtargets -p 192.168.1.26':
#      path  => 'usr/bin/:/sbin/',
#}


#exec {'iscsiadm -m node --login':
#      path  => 'usr/bin/:/sbin/',
#}


#}

