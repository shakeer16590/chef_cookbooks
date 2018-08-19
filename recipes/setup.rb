#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'tree' do
end
package 'vim' do
end
template '/etc/motd' do
  source 'motd.erb'
  variables( :name => 'Shakeer Ahamed' ) 
  action :create
end
