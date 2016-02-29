include_recipe 'iptables'

iptables_rule 'http' do
    action :enable
end
