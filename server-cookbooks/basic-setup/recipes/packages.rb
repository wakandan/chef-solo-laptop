# all package to install
pairing = %w{tmux}
systems = %w{gparted git-core exuberant-ctags}
utils = %{silversearcher-ag xclip}
apps = %{chromium-browser}
programming = %{maven}
packages = [pairing, systems, utils, apps, programming ]

packages.flatten.each do |a_package|
  package a_package
end

