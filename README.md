### You need to install following on your local machine
  * Vagrant / Virtual box
  * do `vagrant up`
  * ChefDK / Use omnibus installer
  * do `bundle install`
  * do `cd infra`
  * do `./bin/knife solo bootstrap -u vagrant -P vagrant vagrant@192.168.33.10 nodes/192.168.33.10.json`
  * do `./bin/knife solo cook -u vagrant -P vagrant vagrant@192.168.33.10 nodes/192.168.33.10.json`

