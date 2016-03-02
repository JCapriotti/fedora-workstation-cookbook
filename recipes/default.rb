#
# Cookbook Name:: fedora_workstation
# Recipe:: default
#

directory '/home/jason/apps' do
  owner   'jason'
  group   'jason'
  mode    '775'
  action  :create
end

include_recipe 'fedora_workstation::dnf'
include_recipe 'fedora_workstation::sublime'