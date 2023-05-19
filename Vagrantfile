# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  # General Vagrant config
  config.vm.box = "generic/ubuntu2204"
  config.ssh.insert_key = false
  config.vm.synced_folder ".", "vagrant", disabled: true
  config.vm.provider :libvirt do |v|
    v.memory = 8192
  end

  config.vm.define "master" do |app|
    app.vm.hostname = "master"
    app.vm.network :private_network, :ip => "192.168.60.4"
  end

  config.vm.define "app" do |app|
    app.vm.hostname = "app"
    app.vm.network :private_network, :ip => "192.168.60.5"
  end
end