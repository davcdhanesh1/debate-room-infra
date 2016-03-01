name "web-server"
description "A role to configure web server on a node"

run_list [
  "recipe[base::yum-packages]",
  "recipe[base::install-nodejs]",
  "recipe[web-server]",
]
