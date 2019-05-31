#
# Cookbook:: python
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.

apt_update("update") do
  action :update
end

package("python") do
  action :install
end
