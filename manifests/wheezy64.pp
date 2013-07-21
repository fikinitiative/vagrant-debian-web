# manifests/wheezy64.pp

node default {

group { "puppet":
    ensure => "present",
}

file { 'motd':
	path => "/etc/motd",
	ensure => "present",
    content => "Welcome to your Vagrant-built virtual machine!
                Managed by Puppet.\n"
}
}