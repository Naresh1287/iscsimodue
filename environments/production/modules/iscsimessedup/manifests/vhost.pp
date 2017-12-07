define iscsi::vhost(
Integer $initiatornamee   = 90,
)
{
    file { 'initiatorname.iscsi':
#       path    => "/etc/iscsi/initiatorname.iscsi",
       ensure  => file,
#       source  => 'puppet:///modules/iscsi/initiatorname.iscsi',
       content => template('iscsi/initiatorname.iscsi.erb')
  }
}

