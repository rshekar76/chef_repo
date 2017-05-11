#
# Cookbook Name:: my_first_oracle_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Log.info("Hello My first cookbook")
=begin
directory '/root/apache2' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
end
%w[ /foo /foo/bar /foo/bar/baz ].each do |path|
  directory path do
    owner 'root'
    group 'root'
    mode '0755'
  end
end

remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
  source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
  action :create
=end
execute 'install_git' do
 command 'C:\chef\Git-2.12.2.2-64-bit.exe /SILENT'
 not_if { File.exists?('C:\Program Files\Git\bin\git.exe')}
end