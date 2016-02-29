yum_package 'epel-release'

yum_package 'ca-certificates' do
  action :upgrade
  options "--disablerepo=epel"
end

include_recipe 'web-server::install-nginx'
include_recipe 'web-server::install-nodejs'
