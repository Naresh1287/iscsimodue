class iscsi::config
#  Hash $initiatorname,
{
    file { 'initiatorname.iscsi':
       path    => "/etc/iscsi/initiatorname.iscsi",
       ensure  => file,
#       source  => 'puppet:///modules/iscsi/initiatorname.iscsi',
       content => template('iscsi/initiatorname.iscsi.erb')
  }

   file { 'iscsid.conf':
       path    => "/etc/iscsi/iscsid.conf",
       ensure  => present,
#       source  => 'puppet:///modules/iscsi/iscsid.conf',
       content => template('iscsi/iscsid.conf.erb')
#       notify  => Service['open-iscsi'],
  }

#  create_resource(::iscsi::config::vhost, $initiatorname)

} 

