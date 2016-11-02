# -*- mode: ruby -*-
# vi: set ft=ruby :

require 'yaml'

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # All Vagrant configuration is done here. The most common configuration
  # options are documented and commented below. For a complete reference,
  # please see the online documentation at vagrantup.com.

  nodes = YAML.load_file('nodes.yaml')
  nodes.each do |node, hash|
    config.vm.define "#{node}" do |v|
      v.vm.box = hash['box']
      if hash.key?('forwarded_ports') then
        hash['forwarded_ports'].each do |f|
          v.vm.network "forwarded_port", guest: f[:guest], host: f[:host]
        end
      end
    end
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
