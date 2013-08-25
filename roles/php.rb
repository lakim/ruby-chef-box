name 'php'
description 'PHP role'
run_list(
  'recipe[php::module_mysql]',
  'recipe[apache2::mod_php5]'
)