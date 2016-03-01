#
# Cookbook Name:: fedora-workstation
# Recipe:: default
#


cookbook_file '/etc/yum.repos.d/google-chrome.repo' do
  source 'google-chrome.repo'
  mode '0755'
end

execute 'dnf -y install google-chrome-stable'
