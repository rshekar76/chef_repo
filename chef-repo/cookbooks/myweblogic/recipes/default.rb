#
# Cookbook Name:: myweblogic
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("I am inside myweblogic Cookbook")

template '/root/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['myweblogic']['sudo']['groups'],
    sudoers_users: node['myweblogic']['sudo']['users']
  })
end