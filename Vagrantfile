# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|

  # 開発用サーバ
  config.vm.define :develop do |develop|
    develop.vm.hostname = "develop"
    develop.vm.box = "bento/ubuntu-16.04"
    develop.vm.network "private_network" , ip: "192.168.11.10"

    #メモリ　512MB
    develop.vm.provider "virtualbox" do |vm|
      vm.customize ["modifyvm", :id, "--memory", "2048"]
    end

    develop.vm.synced_folder "app", "/home/vagrant/dwave",
      id: "vagrant-root1", :nfs => false,
      :owner => "vagrant",
      :group => "www-data",
      :mount_options => ["dmode=775,fmode=775"]

    develop.vm.synced_folder "provision", "/home/vagrant/provision",
      id: "vagrant-provision", :nfs => false,
      :owner => "vagrant",
      :group => "vagrant",
      :mount_options => ["dmode=755,fmode=755"]

    develop.vm.provision "shell", inline: <<-SHELL
      echo "#!/bin/sh\n ansible-playbook -i localhost, -c local /home/vagrant/provision/playbook.yml" > /home/vagrant/provision.sh
    SHELL

    develop.vm.provision "ansible_local" do |ansible|
      #ansible on Guest OS
      #ansible.playbook = "provision_local/playbook.yml"

      #ansible on Host OS
      ansible.playbook = "provision/playbook.yml"
      ansible.install = true #Ansibleを自動でインストールさせる
    end
  end

end
