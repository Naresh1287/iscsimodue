class vagrant {
  
  package { 'vagrant':
          ensure => present, 
     }

  service { 'vagrnat':
    enable => true,
    ensure => running,
    require => Package['vagrnat'],
  }
}

