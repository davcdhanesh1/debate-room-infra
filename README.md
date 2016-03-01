### You need to install following on your local machine
  * Vagrant / Virtual box
  * do `vagrant up`
  * ChefDK / Use omnibus installer
  * knife-solo gem
  * berkshelf
  * Knife-ec2
  * do `cd infra`
  * do `knife solo prepare -u vagrant -P vagrant vagrant@192.168.33.10 nodes/192.168.33.10.json`

