# -*- mode: ruby -*-/
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
 
  box_name = "debate-room-dev-box" 
  host_base_dir = ".."
  guest_base_dir = "/home/vagrant/debate-room"
  
  config.vm.box = box_name
  config.vm.box_url = "~/workspace/centos/box/centos-6.6.box"
    
  config.vm.define box_name do |debate_room_dev_box|
    debate_room_dev_box.vm.network "private_network", ip: "192.168.33.10"
    debate_room_dev_box.vm.network "forwarded_port", host: 8000, guest: 8000
    debate_room_dev_box.vm.network "forwarded_port", host: 8080, guest: 80
    debate_room_dev_box.vm.network "forwarded_port", host: 35729, guest: 35729

    debate_room_dev_box.vm.synced_folder "#{host_base_dir}/debate-room-backend", "#{guest_base_dir}/debate-room-backend"
    debate_room_dev_box.vm.synced_folder "#{host_base_dir}/debate-room-frontend", "#{guest_base_dir}/debate-room-frontend"
    debate_room_dev_box.vm.synced_folder "#{host_base_dir}/debate-room-infra", "#{guest_base_dir}/debate-room-infra"
    debate_room_dev_box.ssh.insert_key=true
  end

  config.vm.provider :virtualbox do |v|
    v.name = box_name
    v.customize ["modifyvm", :id, "--memory", 4096]
  end

end
