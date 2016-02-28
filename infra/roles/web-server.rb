name "web-server"
description "A role to configure web server on a node"

common_run_list = ["recipe[web-server]"]

env_run_list(
  "_default" => common_run_list,
  "local" => ["recipe[web-server::iptables-rule]"] + common_run_list
)
