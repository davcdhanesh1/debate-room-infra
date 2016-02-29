name "web-server"
description "A role to configure web server on a node"

common_run_list = ["recipe[web-server]"]
run_list(common_run_list)
