include_recipe "basic-setup::apt"
include_recipe "basic-setup::packages"
include_recipe "basic-setup::zsh"
include_recipe "basic-setup::guake"
#include_recipe "basic-setup::python"
include_recipe "basic-setup::flux"
include_recipe "basic-setup::docker"
include_recipe "java"
#execute "update sources" do
#  command "apt-get update -y"
#end

# all recipes to include
utils = %w{}
recipes = [ utils ]

recipes.flatten.each do |a_recipe|
  include_recipe a_recipe
end


# all files to create

