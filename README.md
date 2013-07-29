vagrant-debian-web
==================

Vagrant default configuration for php development with debian

Welcome to your custom Vagrant/Puppet setup powered by puPHPet
==============================================================

The setup includes:
-------------------
* box:       wheezy64 (https://dl.dropboxusercontent.com/u/3023748/debian-wheezy-64.box)
* webserver: apache
* database:  mysql
* PHP:       PHP 5.4

Next steps:
-----------
If you have not installed Vagrant yet, go to http://downloads.vagrantup.com/

Copy the contents of this archive to a new folder
and run there:

$ vagrant up

Afterwards you may access your box with

$ vagrant ssh

More documentation:
* Vagrant >= 1.1: http://docs.vagrantup.com/v2/vagrantfile/ssh_settings.html
* Vagrant <  1.1: http://docs-v1.vagrantup.com/v1/docs/getting-started/ssh.html

If you encounter any problems do not hesitate to create an issue on https://github.com/puphpet/puphpet/issues
with your serialized configuration which is stored in puphpet.json.

Enjoy!
