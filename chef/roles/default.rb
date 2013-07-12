name 'default'
description 'Default role'
default_attributes(
  "rbenv" => {
    "rubies" => [ "1.9.3-p448" ],
    "global" => "1.9.3-p448"
    # "gems" => {
    #   "1.9.3-p448" => [
    #     { "name" => "bundler" }
    #   ]
    # }
  }
)
run_list(
  'recipe[apt]',
  'recipe[git]',
  # 'recipe[build-essential]',
  'recipe[ruby_build]',
  'recipe[rbenv::system]',
)