name 'php'
description 'PHP role'
run_list(
  'recipe[apache2::mod_php5]'
)