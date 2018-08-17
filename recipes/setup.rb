#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'tree' do
end
package 'vim' do
end
file '/etc/motd' do
 content "This server is of #{node['root_group']}
 Hostname: #{node['hostname']}
 Ip-Address: #{node['ipaddress']} 
 O.S : #{node['hostnamectl']['operating_system']}
 Memory-Info: #{node['memory']['total']}"
end
