
user 'jason' do
  action :create
end

group 'jason' do
  members 'jason'
end

include_recipe 'fedora_workstation::default'