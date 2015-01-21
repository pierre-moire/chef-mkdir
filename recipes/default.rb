#
# Cookbook Name:: mkdir
# Recipe:: default
# 
for dir in default['mkdir']
	directory dir["path"] do
		owner dir["owner"] if dir["owner"]
		group dir["group"] if dir["group"]
		mode dir["mode"] if dir["mode"]
		action :create
	end
end