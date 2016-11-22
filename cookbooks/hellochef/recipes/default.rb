#
# Cookbook Name:: hellochef
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

file '/tmp/hello.txt' do
	action:delete
end
file '/tmp/hello1.txt' do
	action:delete
end
