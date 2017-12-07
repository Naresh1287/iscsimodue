class iscsi::params {
     if $::osfamily == 'Ubuntu' {
               $iscsiname   =  'open-iscsi'
                $conffile    =  '/etc/iscsi/initiatorname.iscsi'
                $confsource  =  '/etc/puppetlabs/code/modules/iscsi/files/initiatorname.iscsi'
                $conffile    =  '/etc/iscsi/iscsid.conf'
                $confsource  =  'puppet:///etc/puppetlabs/code/modules/iscsi/files/iscsi.conf'
#       } elseif $::osfamily ==  'RedHat' {
#                $iscsiname = 'iscsi-initiator-utils'
#        } else {
#           print "This is not a supported distro."
  }
}
