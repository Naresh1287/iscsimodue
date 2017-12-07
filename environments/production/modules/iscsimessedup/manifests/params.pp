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


#     if $::osfamily == 'Ubuntu' {
#               $iscsiname   =  'open-iscsi'
#                $conffile    =  '/etc/iscsi/initiatorname.iscsi'
#                $confsource  =  'puppet:///modules/iscsi/initiatorname.iscsi'
#                $conffile1    =  '/etc/iscsi/iscsid.conf'
#                $confsource1  =  'puppet:///modules/iscsi/iscsi.conf'
#       } elseif $::osfamily ==  'RedHat' {
#                $iscsiname = 'iscsi-initiator-utils'
#        } else {
#           print "This is not a supported distro."
#  }
#}
