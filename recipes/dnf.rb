#
# Cookbook Name:: fedora_workstation
# Recipe:: dnf
#

cookbook_file '/etc/yum.repos.d/google-chrome.repo' do
  source 'google-chrome.repo'
  mode '0755'
end

bash 'dnf things' do
  code <<-EOH
    dnf -y remove rhythmbox
    dnf -y remove cheese
    dnf -y remove firefox

    dnf -y install @cinnamon-desktop
    dnf -y install google-chrome-stable
    dnf -y install meld
    dnf -y install terminator
    EOH
end

