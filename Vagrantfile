Vagrant.configure(2) do |config|
  config.vm.box = "centos7"
  config.vm.box_url = "../boxes/CentOS-7-x86_64-Vagrant-1801_02.VirtualBox.box"
  config.vm.hostname = "centos7"
  config.vm.network "forwarded_port", guest: 22, host: 12222, id: "ssh"
  config.vm.network "forwarded_port", host: 80, guest: 80, host_ip: "127.0.0.1"
  config.vm.network "forwarded_port", host: 443, guest: 443, host_ip: "127.0.0.1"
  config.vm.network "private_network", ip: "192.168.33.12"
  config.vm.synced_folder ".", "/vagrant", type: "virtualbox", mount_options: ['dmode=777','fmode=744']
  config.vm.provider "virtualbox" do |vb|
    vb.name = "centos7"
    vb.cpus = 2
    vb.memory = 2048
  end
  config.ssh.insert_key = false
  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "provision/playbook.yml"
    ansible.verbose = "vvv"
    # ansible.inventory_path = "provision/hosts"
    # ansible.limit = "local"
  end
end
