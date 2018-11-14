#
# Cookbook:: workstation
# Recipe:: setup
#
# Copyright:: 2018, The Authors, All Rights Reserved.

package 'tree' do
  action :install
end

package 'ntp' do
  action :install
end

package 'git'

file '/home/spfm/motd' do
  content 'This is the property of Soham Mondal'
  action :create
  owner 'root'
  group 'root'
end
