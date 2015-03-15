name "core"
description "Base (base) Linux Role"
run_list "recipe[chef-client::delete_validation]", "recipe[chef-client]", "recipe[hosts]", "recipe[users::linux-users]"