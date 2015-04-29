# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "paiza-environment-provision" do |paiza|
    paiza.vm.network :private_network, ip: "192.168.33.11"
    paiza.vm.hostname = "paiza-environment-provision"
    paiza.vm.network :forwarded_port, id: "ssh", guest: 22, host: 2222

    paiza.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024"]
    end

    paiza.vm.provision "shell", path: "provision.sh"
  end

end