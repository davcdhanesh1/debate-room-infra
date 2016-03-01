
name "local-workstation"
description "A role to configure local workstation on a node"

run_list [
  "recipe[base::yum-packages]",
  "recipe[base::setup-iptable-rules]",
  "recipe[base::install-git]",
  "recipe[base::install-nodejs]",
  "recipe[base::install-npm-packages]",
  "recipe[web-server]"
]
