#
# Cookbook Name:: my_third_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
=begin
cookbook_file '/root/config.txt' do
  source 'config_file'
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
file '/root/config.txt' do
  content '<html><p> Hello this a page updated using chef</html>'
  mode '0755'
  owner 'root'
  group 'root'
=end
if node['platform'] == 'windows'
  Chef::Log.info("I am in version windows")
elsif node['platform'] == 'ubuntu'
	Chef::Log.info("I am in version ubuntu")
else  node['platform'] == 'oracle'
	Chef::Log.info("I am in version oracle")
end