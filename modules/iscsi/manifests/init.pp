#class iscsi {
#       package { 'iscsi':
#         name => $iscsiname,  
#       ensure => present,
#    }
#}

class iscsi (
  $apachename   = $::iscsi::params::iscsiname,
) inherits ::iscsi::params {
          package { 'open-iscsi':
         name => $iscsiname,
       ensure => present,

}

file { 'initiatorname.iscsi':
    path    => "/etc/iscsi/initiatorname.iscsi",
    ensure  => present,
    source  => "/etc/puppetlabs/code/modules/iscsi/files/initiatorname.iscsi",
#    notify  => Service['open-iscsi'],
}
        
#service { 'open-iscsi':
#    name          => $iscsiname,
#    hasrestart    => true,
#}

}

