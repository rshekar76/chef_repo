#
# Cookbook Name:: myenvcookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("I am in cookbook version 0.4.0 attvalue= #{node['myenvcookbook']['http_port_no']}")
Chef::Log.info("I am in cookbook version 0.4.0 attvalue= #{node['myenvcookbook']['redirect_port_no']}")