#
# Cookbook Name:: napache2
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
package 'httpd' do
	action:install
end

service 'httpd' do
	action [:enable, :start]
end

file '/var/www/html/index.html' do
	content "Hello world...This is Chef Httpd program...!"
	mode '0755'
	owner 'root'
	group 'apache'
end

template '/tmp/server.xml' do
	source "napache2.erb"
	mode "0755"
end
