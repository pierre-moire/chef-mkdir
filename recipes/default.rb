#
# Cookbook Name:: mkdir
# Recipe:: default
# 
for dir in node['mkdir']
	directory dir["path"] do
		owner dir["owner"] if dir["owner"]
		group dir["group"] if dir["group"]
		mode dir["mode"] if dir["mode"]
		action :create
	end
end if node['mkdir']
