# Cookbook Name:: mkdir
# Recipe:: default
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

for dir in node['mkdir']
	Chef::Log.info("Creating directory #{dir["path"]}")
	directory dir["path"] do
		owner dir["owner"] if dir["owner"]
		group dir["group"] if dir["group"]
		mode dir["mode"] if dir["mode"]
		action :create
	end
end if node['mkdir']
