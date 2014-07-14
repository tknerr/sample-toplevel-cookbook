#
# Cookbook Name:: sample-app
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# refresh apt cache
include_recipe "apt"

# ensure default site is enabled and install apache
node.set['apache']['default_site_enabled'] = true
include_recipe "apache2"

# workaround for CHEF-4753
if Chef::Config['data_bag_path'].is_a? Array
  Chef::Config['data_bag_path'] = Chef::Config['data_bag_path'].first
end

# read yummy ingredients from databag
begin
  yummy_stuff = data_bag('yummy').map { |id| data_bag_item('yummy', id) }
rescue => e
  log "can not load data_bag: #{e.message}"
end

# deploy sample html page 
template "/var/www/sample.html" do
  source "sample.html.erb"
  owner node['apache']['user']
  group node['apache']['group']
  mode 00644
  variables(
    :words_of_wisdom => node['sample_app']['words_of_wisdom'],
    :yummy_ingredients => yummy_stuff
  )
end
