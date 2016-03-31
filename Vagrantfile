# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure(2) do |config|

  config.vm.box = "ubuntu/trusty64"
  config.ssh.password = "vagrant"
  config.vm.provision "shell", path: "ansible/provision.sh"
  config.vm.network "forwarded_port", guest: 80, host: 8090

  config.vm.synced_folder ".", "/vagrant"
  config.vm.synced_folder ".", "/vagrant_nox", :mount_options => ["fmode=666"]

  config.vm.provider "virtualbox" do |vb|
    vb.memory = 3000
    vb.cpus = 2
  end
end

