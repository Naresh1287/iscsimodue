class iscsi::params {
     case $facts['os']['family']{
   'Debian': {
       $package_name = 'open-iscsi'
       $service_name = 'open-iscsi'
    } 
 'RedHat': {
       $package_name = 'iscsi-initiator-utils'
       $service_name = 'iscsi-initiator'
    }
   defaults:{
   
      fail("${facts['opertingsystem']} is not supported!")
    }

}

}


