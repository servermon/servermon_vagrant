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

A provided by VagrantCloud/Atlas.
All of them are 64-bit. That being said, servermon is architecture independent.


Usage
=====

Make sure you got vagrant and virtualbox. Vagrant version required is at least
1.5 so you if you are using Debian Wheezy you will have to download the .deb
manually. Virtualbox version used during development is 4.3, it might be best to
stick to that, as I have done zero testing with other versions

.. code-block:: bash

    vagrant up
    vagrant ssh <VM>
    cd /srv/servermon/servermon

Where <VM> is one of:

 * precise
 * trusty
 * jessie
 * wheezy

Then point your browser to:

http://localhost:<port>

where port is one of the following:

 * 10090 -> precise gunicorn
 * 10080 -> precise apache proxying to unicorn
 * 10443 -> precise apache HTTPS proxying to unicorn
 * 11090 -> trusty gunicorn
 * 11080 -> trusty apache proxying to unicorn
 * 11443 -> trusty apache HTTPS proxying to unicorn
 * 12090 -> jessie gunicorn
 * 12080 -> jessie apache proxying to unicorn
 * 12443 -> jessie apache HTTPS proxying to unicorn
 * 13090 -> wheezy gunicorn
 * 13080 -> wheezy apache proxying to unicorn
 * 13443 -> wheezy apache HTTPS proxying to unicorn

Happy developing.
