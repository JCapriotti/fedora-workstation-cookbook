#
# Cookbook Name:: fedora_workstation
# Recipe:: sublime
#

temp_path = Chef::Config[:file_cache_path]
application_path = node['fedora_workstation']['application_path']
sublime_path = "#{application_path}/sublime_text_3"

remote_file "#{temp_path}/sublime.tar.bz2" do
  source  'https://download.sublimetext.com/sublime_text_3_build_3103_x64.tar.bz2'
  action  :create
end

bash 'install sublime' do
  cwd temp_path
  code <<-EOH
    tar vxjf sublime.tar.bz2
    mv sublime_text_3 #{application_path}
  EOH
  not_if { ::File.exists?(sublime_path) }
end

link '/usr/bin/sublime' do
  to  "#{sublime_path}/sublime_text"
end