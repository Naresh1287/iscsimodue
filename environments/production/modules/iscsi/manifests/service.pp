class iscsi::service(
String $service_name = $::iscsi::service_name
){
 service {'open-iscsi':
    ensure       =>  running,
    name         =>  $service_name,
    enable       =>  true,
    hasstatus    =>  true, 
    hasrestart   =>  true, 
}


}

