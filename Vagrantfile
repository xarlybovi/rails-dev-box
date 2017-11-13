# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = 'ubuntu/zesty64' # 17.04
  config.vm.hostname = 'rails-dev-box'

  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  config.vm.synced_folder "development/", "/home/ubuntu/development", type: "nfs"

  config.vm.network :forwarded_port, guest: 3000, host: 3000
  config.vm.network :private_network, ip: "192.168.33.10" # this is required if you wish to use NFS under VirtualBox

  config.vm.provision :shell, path: "provisioner.sh", keep_color: true
  config.vm.provision :shell, path: "install-rvm.sh", args: "stable", privileged: false, keep_color: true
  config.vm.provision :shell, path: "install-ruby.sh", args: "2.4.1", privileged: false, keep_color: true

  config.vm.provider 'virtualbox' do |v|
    v.memory = 2048
    v.cpus   = 2
  end
end
