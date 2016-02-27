yum_package 'nginx'
service 'nginx' do 
  action :start
end
