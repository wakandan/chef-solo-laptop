guake_folder = "#{Chef::Config[:file_cache_path]}/guake"
git guake_folder do
  repository "https://github.com/Guake/guake.git"
end
