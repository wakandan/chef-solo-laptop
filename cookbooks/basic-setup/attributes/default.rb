mysql_password = 'mysql'

set['mysql']['server_debian_password'] = mysql_password
set['mysql']['server_root_password']   = mysql_password
set['mysql']['server_repl_password']   = mysql_password
node.default[:username] = 'akai'

node.default['java']['install_flavor'] = 'oracle'
node.default['java']['jdk_version'] = '8'
node.default['java']['set_etc_environment'] = true

