#
# Cookbook Name:: nginx_unicorn
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "nginx"

# delete nginx conf file
file "/etc/nginx/nginx.conf" do
   action :delete
end

#create new one from file
template 'nginx.conf' do
  path   "#{node['nginx_unicorn']['dir']}/nginx.conf"
  source 'nginx.conf.erb'
  owner  'root'
  group  'root'
  mode   '0644'
end

service "nginx" do
  action :reload
end