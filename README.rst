servermon vagrant
=================

Servermon is a Django project with the aim of facilitating server monitoring
and management through Puppet. The place where servermon is developed is at
http://github.com/servermon/servermon

Servermon Vagrant is a small project to facilitate developing on servermon by
setting up vagrant VMs. There are 4 different images chosen right now. Those are:

 * Debian Wheezy 64-bit
 * Debian Jessie 64-bit
 * Ubuntu Precise 64-bit
 * Ubuntu Trusty 64-bit
 * Ubuntu Xenial 64-bit

All provided by VagrantCloud/Atlas.
All of them are 64-bit. That being said, servermon is architecture independent.

Usage
=====

Make sure you got vagrant and virtualbox. Vagrant version required is at least
1.5 so you if you are using Debian Wheezy you will have to download the .deb
manually. Virtualbox version used during development is 5.1, it might be best to
stick to that. However 4.3 was the starting point so it might still work

.. code-block:: bash

    git submodule update --init
    vagrant up

Then point your browser to:

http://localhost:<port>

where port is best looked up in the nodes.yaml file. The following convention exists:

 * 1X090 -> gunicorn
 * 1X080 -> apache HTTP reverse proxying to gunicorn
 * 1X443 -> apache HTTPS reverse proxying to gunicorn

The X varies per VM, again consult the nodes.yaml file

To start developing

.. code-block:: bash

    vagrant ssh <VM>
    cd /srv/servermon/servermon

Where <VM> is one of:

 * precise
 * trusty
 * xenial
 * jessie
 * wheezy

Happy developing.

Notes
=====

The repository has a git submodule under servermon. That is the actual servermon
software and it is there to make the multi environment development allowed by
vagrant easier. Do not forget to occasionally git submodule update

precise is not able to load the sample data. This is due to some changes
in the way datetimes are stored by django post version 1.3. This is
probably not gonna be fixed since support for Django 1.3 and hence
precise is due to be dropped soon
