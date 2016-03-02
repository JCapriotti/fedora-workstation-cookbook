#
# Cookbook Name:: fedora-workstation
# Recipe:: default
#

cookbook_file '/etc/yum.repos.d/google-chrome.repo' do
  source 'google-chrome.repo'
  mode '0755'
end

execute 'dnf -y remove rhythmbox'
execute 'dnf -y remove cheese'
execute 'dnf -y remove firefox'

execute 'dnf -y install @cinnamon-desktop'
execute 'dnf -y install google-chrome-stable'
execute 'dnf -y install meld'
execute 'dnf -y install terminator'
