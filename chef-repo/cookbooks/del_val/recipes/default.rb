#
# Cookbook Name:: del_val
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

validation_pem_file_path = case node['platform']
	when "centos","redhat"
		'/etc/chef/validation.pem'
	else
		'c:\chef\validation.pem'
	end

file validation_pem_file_path do
	backup false
	action :delete
	only_if { File.exist?(validation_pem_file_path) }
end