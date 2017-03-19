include_recipe "basic-setup::apt"
include_recipe "basic-setup::packages"
include_recipe "basic-setup::zsh"
#include_recipe "basic-setup::guake"
include_recipe "basic-setup::python"
include_recipe "basic-setup::flux"
include_recipe "basic-setup::docker"
include_recipe "java"
include_recipe 'nodejs'
include_recipe "nodejs::npm"


#ENV['ARCHFLAGS'] = "-arch x86_64"
#include_recipe 'postgresql::ruby'
#execute "update sources" do
#  command "apt-get update -y"
#end

# all recipes to include
utils = %w{ibus-unikey}
systems = %w{libqp-dev}
packages = [utils,systems]

packages.flatten.each do |p|
  package p 
end

bash 'restart unikey' do
  user node[:username]
  code <<-EOH
    ibus restart
  EOH
end



# all files to create

