#
# Cookbook Name:: ip-logger
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

search("node", "ipaddress:10.*").each do |server|
	log "The server in your organization have the following FQDN/IP Address:- #{server['fqdn']}/#{server['ipaddress']}"
end