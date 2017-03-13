%w{libxxf86vm1:i386 fluxgui}.each do |a_package|
  package a_package
end

file_name = 'xflux-pre.tgz' 
tmp_path = "/tmp/#{file_name}"

remote_file tmp_path do
  source 'https://herf.org/flux/xflux-pre.tgz'
end

bash 'extract xflux' do
  cwd '/tmp' 
  code <<-EOH
    tar xzf #{file_name}
    sudo mv xflux /usr/bin/xflux
  EOH
end
