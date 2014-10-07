servermon vagrant
=================

Servermon is a Django project with the aim of facilitating server monitoring
and management through Puppet. The place where servermon is developed is at
http://github.com/servermon/servermon

Servermon Vagrant is a small project to facilitate developing on servermon by
setting up vagrant VM. The image chosen is a Debian Wheezy 64-bit with puppet
3.4 as provided in Vagrant Cloud by Puppetlabs

Usage
=====

Make sure you got vagrant and virtualbox. Vagrant version required is at least
1.5 so you if you are using Debian Wheezy you will have to download the .de
manually. Virtualbox version used during development is 4.3, it might be best to
stick to that, as I have done zero testing with older versions

.. code-block:: bash

    vagrant up
    vagrant ssh
    cd /srv/servermon/servermon
    ./manage.py syncdb
    ./manage.py migrate

And at your host http://localhost:8080. Happy developing
