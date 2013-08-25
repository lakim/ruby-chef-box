name 'default'
description 'Default role'
default_attributes(
  "users" => [ "deploy" ]
)
run_list(
  'recipe[apt]',
  'recipe[user::data_bag]',
  'recipe[git]'
)