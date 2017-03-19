guake_folder = "#{Chef::Config[:file_cache_path]}/guake"
git guake_folder do
  repository "https://github.com/Guake/guake.git"
end

guake_packages = %w{python-vte python-dbus}
guake_packages.each do |p|
  package p
end


bash 'install guake' do
  cwd guake_folder
  user node[:username]
  code <<-EOH
    ./dev.sh --install
  EOH
end
