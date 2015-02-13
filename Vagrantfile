# -*- mode: ruby -*-
# vi: set ft=ruby :
#
# This is a Vagrant box that populates itself as a FreeIPA server. 
#
# DEPENDENCIES:
# vagrant-hosts vagrant plugin. Install with:
#   vagrant plugin install vagrant-hosts

Vagrant.configure(2) do |config|
  config.vm.box = "vStone/centos-7.x-puppet.3.x"

  # The hostname MUST match the main IP address of the host, and be specified
  # as such in /etc/hosts. As such, this Vagrantfile depends on the 
  # vagrant-hosts plugin.
  config.vm.hostname = "freeipa.example.org"
  config.vm.network "private_network", ip: "192.168.65.4"
  config.vm.provision :hosts do |provisioner|
	  provisioner.add_host '192.168.65.4', ['freeipa.example.org']
  end
  config.vm.provision "shell", inline: <<-SHELL
    sed -i 's/127.0.1.1.*freeipa.example.org.*//' /etc/hosts
  SHELL


  # Forwarding interesting ports from 
  # http://docs.fedoraproject.org/en-US/Fedora/15/html/FreeIPA_Guide/installing-ipa.html#tab.ipa-ports:
  # Web UI:
  config.vm.network "forwarded_port", guest: 443, host: 4443
  # LDAP:
  config.vm.network "forwarded_port", guest: 389, host: 13389

  # And install freeipa:
  config.vm.provision "shell", inline: <<-SHELL
  	puppet module install huit/ipa
  SHELL
  
  config.vm.provision "puppet" do |puppet|
	  puppet.manifest_file = "default.pp"
  end

    # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
