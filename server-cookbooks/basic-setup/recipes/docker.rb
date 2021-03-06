%w{apt-transport-https ca-certificates curl software-properties-common}.each do |pack|
  package pack
end

bash 'add docker key' do
  code <<-EOH 
    curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
    sudo add-apt-repository \
       "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
       $(lsb_release -cs) \
       stable"
    sudo apt-get update
    sudo apt-get install -y docker-ce
    sudo groupadd docker
    sudo gpasswd -a #{node.default[:username]} docker
    sudo service docker restart
  EOH
end
