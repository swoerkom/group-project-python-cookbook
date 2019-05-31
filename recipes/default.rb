#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update("update") do
  action :update
end

package("python-pip") do
  action :install
end

package("python-minimal") do
  action :install
end

template '/app/' do
  source '/app/requirements.txt'
end

execute 'requirements' do
  command 'pip install -r /home/ubuntu/app/requirements.txt'
end
