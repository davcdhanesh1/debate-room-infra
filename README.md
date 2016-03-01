### You need to install following on your local machine
  * Vagrant / Virtual box
  * do `vagrant up`
  * ChefDK / Use omnibus installer
  * bundle install --path vendor/bundle
  * do `cd infra`
  * do `knife solo prepare -u vagrant -P vagrant vagrant@192.168.33.10 nodes/192.168.33.10.json`

