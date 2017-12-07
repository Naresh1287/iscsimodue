class iscsi::config(
  $config_file_template = 'iscsi/initiatorname.iscsi.erb',
#  $options_hash         = {},
  $main_conf_file = 'iscsi/iscsid.conf.erb',

#  $main_conf_file = 'iscsi/iscsid.conf.erb',
  $options_hash         = {},
) {
  file { '/etc/iscsi/initiatorname.iscsi':
       notify  => Service['open-iscsi'], 
       content => template($config_file_template),
  }


#    file { 'initiatorname.iscsi':
#       path    => "/etc/iscsi/initiatorname.iscsi",
#       ensure  => present,
#       source  => 'puppet:///modules/iscsi/initiatorname.iscsi',
#       content => template('iscsi/initiatorname.iscsi.erb')
#       notify  => Service['open-iscsi'],
#  }

   file { '/etc/iscsi/iscsid.conf':
         notify  => Service['open-iscsi'], 
 #       ensure  => present,
         content => template($main_conf_file)
  }

} 

