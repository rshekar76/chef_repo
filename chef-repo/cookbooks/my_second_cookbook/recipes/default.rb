#
# Cookbook Name:: my_second_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
Chef::Log.info("my attribues is #{node['my_second_cookbook']['testvalue']}")
Chef::Log.info("my attribues is #{node['my_second_cookbook']['git_installer_name']}")
Chef::Log.info("my attribues is #{node['my_second_cookbook']['git_path_name']}")
Chef::Log.info("my attribues is #{node['my_second_cookbook']['git_source_url']}")

remote_file node['my_second_cookbook']['git_path_name'] do
  source node['my_second_cookbook']['git_source_url']
  action :create
=end
#Example for notifiers and nothing
service "ssh" do
	action :nothing
end

template '/root/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['authorization']['sudo']['groups'],
    sudoers_users: node['authorization']['sudo']['users']
  })

  notifies :restart, 'service[ssh]', :before

end