class iscsi::exec(

  $config_file_templatee = 'iscsi/exec.sh.erb',
  $options_hash          = {},
) {
  file { '/opt/script/exec.sh':
       mode    => '0777',
       owner   => 'root',
       group   => 'root', 
       content => template($config_file_templatee),
  }





exec {'/bin/bash  /opt/script/exec.sh':
      path  => '/usr/bin/:/sbin/:/bin/',
}

}

