# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  config.vm.define "precise" do |precise|
      precise.vm.box = "ubuntu/precise64"
      precise.vm.network "forwarded_port", guest: 8090, host: 10090
      precise.vm.network "forwarded_port", guest: 80, host: 10080
      precise.vm.network "forwarded_port", guest: 443, host: 10443
  end
  config.vm.define "trusty" do |trusty|
      trusty.vm.box = "ubuntu/trusty64"
      trusty.vm.network "forwarded_port", guest: 8090, host: 11090
      trusty.vm.network "forwarded_port", guest: 80, host: 11080
      trusty.vm.network "forwarded_port", guest: 443, host: 11443
  end
  config.vm.define "jessie" do |jessie|
      jessie.vm.box = "debian/contrib-jessie64"
      jessie.vm.network "forwarded_port", guest: 8090, host: 12090
      jessie.vm.network "forwarded_port", guest: 80, host: 12080
      jessie.vm.network "forwarded_port", guest: 443, host: 12443
  end
  config.vm.define "wheezy" do |wheezy|
      wheezy.vm.box = "debian/wheezy64"
      wheezy.vm.network "forwarded_port", guest: 8090, host: 13090
      wheezy.vm.network "forwarded_port", guest: 80, host: 13080
      wheezy.vm.network "forwarded_port", guest: 443, host: 13443
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Enable provisioning with Puppet stand alone.  Puppet manifests
  # are contained in a directory path relative to this Vagrantfile.
  # You will need to create the manifests directory and a manifest in
  # the file default.pp in the manifests_path directory.
  #
  #
  config.vm.provision "shell" do |s|
      s.path = "git.sh"
  end
  config.vm.provision "shell" do |puppet_install|
      puppet_install.inline = "apt-get install -y puppet"
  end
  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "puppet/manifests"
    puppet.module_path = "puppet/modules"
    puppet.manifest_file  = "site.pp"
  end
  config.vm.provision "shell" do |d|
      d.path = "django.sh"
  end
end
