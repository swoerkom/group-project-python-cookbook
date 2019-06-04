#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update("update") do
  action :update
end

package("python-pip") do
  action [:install, :upgrade]
end

package("python-minimal") do
  action [:install, :upgrade]
end

template '/etc/python/requirements.txt' do
  source 'requirements.txt'
end

execute 'install requirements' do
  command 'pip install -r /etc/python/requirements.txt'
end
