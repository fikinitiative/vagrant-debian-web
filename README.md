vagrant-debian-web
==================
Vagrant default configuration for php development with debian.
(Custom Vagrant/Puppet setup powered by puPHPet)

The setup includes:
-------------------
* box:       debian-wheezy72-x64-vbox43 (https://puphpet.s3.amazonaws.com/debian-wheezy72-x64-vbox43.box)
* webserver: apache
* database:  mysql
* PHP:       PHP 5.4

Next steps:
-----------
* If you have not installed Virtualbox, install last version (4.3.2) from https://www.virtualbox.org/wiki/Downloads

* If you have not installed Vagrant yet, go to http://downloads.vagrantup.com/ and install last version (1.3.5)

* Clone the repo on your user directory:
  $ git clone git@github.com:fikinitiative/vagrant-debian-web.git /Users/youruser/Sites/vagrant-debian-web

* Go this directory
  $ cd /Users/youruser/Sites/vagrant-debian-web

* Execute install_ddbb.sh
  $ sh install_ddbb.sh

* Execute install_code.sh
  $ sh install_code.sh

* (If you are on OSX) Go to this directory and executes install_vagrant_sudoers.sh
  $ sudo sh install_vagrant_sudoers.sh

* Start the virtual machine:
  $ vagrant up

* Afterwards you may access your box with
  $ vagrant ssh

More documentation:
* Vagrant >= 1.1: http://docs.vagrantup.com/v2/vagrantfile/ssh_settings.html
* Vagrant <  1.1: http://docs-v1.vagrantup.com/v1/docs/getting-started/ssh.html

If you encounter any problems do not hesitate to create an issue on https://github.com/puphpet/puphpet/issues
with your serialized configuration which is stored in puphpet.json.

Install wp-fikstores:
---------------------
* On your computer, add to /etc/hosts the host configuration to the new virtual machine:
  192.168.56.101 fikstore.lc prueba.fikstore.lc hola.fikstore.lc

* If you have not installed composer yet, do it:
  $ brew tap josegonzalez/homebrew-php
  $ brew install josegonzalez/php/composer
  $ composer selfupdate

* Run composer install on the project:
  $ cd /Users/youruser/Sites/wp-fikstore/
  $ composer install

* Now, you can test it on a browser: http://prueba.fikstore.lc/

Enjoy it!
