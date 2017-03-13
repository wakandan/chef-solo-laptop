bash 'add repositories' do
  code <<-EOH
    sudo add-apt-repository ppa:nathan-renniewaldock/flux
    sudo apt-get update
  EOH
end
