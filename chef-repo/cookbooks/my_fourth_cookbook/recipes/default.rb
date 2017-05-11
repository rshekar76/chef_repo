#
# Cookbook Name:: my_fourth_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
template '/root/server.xml' do
  source 'server.xml.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    http_port: node['my_fourth_cookbook']['http_port_no'],
    redirect_port: node['my_fourth_cookbook']['redirect_port_no'],
    ajp_port: node['my_fourth_cookbook']['ajp_port_no'],
    agpredirect_port: node['my_fourth_cookbook']['agpredirect_port_no']
    
  })
end