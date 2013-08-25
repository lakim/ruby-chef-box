name 'web'
description 'Web server role'
default_attributes(
  "users" => [ "deploy" ]
)
run_list(
  'recipe[apache2]'
)