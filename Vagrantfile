# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/rockylinux8"
  config.vm.network "private_network", ip: "192.168.56.11"

  # Provisioning configuration for Ansible.
  config.vm.provision "ansible" do |ansible|
    # ansible.verbose = "vvv"
    ansible.playbook = "playbook.yml"
    ansible.compatibility_mode = "1.8"
  end
end
