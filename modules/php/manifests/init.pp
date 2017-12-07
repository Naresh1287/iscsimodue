class php {
  
  package { 'php':
          ensure => present, 
     }

  service { 'php7.0-fpm':
    enable => true,
    ensure => running,
    require => Package['php'],
  }
}
