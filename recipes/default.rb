#
# Cookbook Name:: chef-centos7-httpd
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

include_recipe 'chef-centos7-common::default'

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

group 'web_admin'

user 'web_admin' do
  group 'web_admin'
  system true
  shell '/bin/bash'
end

template '/var/www/html/index.html' do
  source 'index.html.erb'
  mode '0644'
  owner 'web_admin'
  group 'web_admin'
end
