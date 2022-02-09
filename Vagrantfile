# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
# vagrant plugin install vagrant-env
  config.env.enable

  config.vm.provider :virtualbox do |vb|
    config.vm.box = ENV['BOX_NAME']
    vb.memory = ENV['MEMORY']
    vb.cpus = ENV['CPUS']
  end

  config.vm.network "forwarded_port", guest: 8000, host: 8000

  config.vm.synced_folder ".", "/home/vagrant/#{ENV['PROJECT_NAME']}"

  config.vm.provision "shell", inline: "echo hello from inline shell"

  config.vm.provision "shell", path: "install_packages.sh", :args => "#{ENV['PROJECT_NAME']}"

end
