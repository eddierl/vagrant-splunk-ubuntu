# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|


  config.vm.define "splunk" do |splunk|
    splunk.vm.box = "precise32"
	config.vm.hostname = "splunk"
	splunk.vm.network "private_network", ip: "192.168.50.4"
	 splunk.vm.network "forwarded_port", guest: 8000, host: 8000, host_ip: "127.0.0.1"
	 splunk.vm.provision :shell, :path => "splunk.sh"
  end

end
