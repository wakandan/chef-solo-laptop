Chef Solo Laptop
================

This repository contains chef cookbooks and recipes for the provisioning
of my laptop.

Setups
------
* Download chef at https://downloads.chef.io/chefdk
* For installing new cookbooks: 
.. Put the cookbook in Berksfile
.. Put `depends <cookbook>` into metadata file
.. Run `berks install`
.. Run `berks vendor` so that cookbooks are copied into `cookbooks` folder. Because of solo.rb file, those cookbooks will be found
.. Include cookbooks' recipe into the recipe file

### Run Chef Solo

Now that Chef Solo is installed we should use it. Execute the
following command to provision your laptap.

    sudo chef-solo -c solo.rb -j solo.json

This will execute the recipe in
`cookbooks/basic-setup/recipes/default.rb`

The above command can be executed with the
[scripts/provision.sh](https://github.com/dvberkel/chef-solo-laptop/blob/master/scripts/provision.sh)
script.
