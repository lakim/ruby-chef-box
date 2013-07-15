name 'default'
description 'Default role'
default_attributes(
  "rbenv" => {
    "rubies" => [ "1.9.3-p448" ],
    "global" => "1.9.3-p448",
    # "gems" => {
    #   "1.9.3-p448" => [
    #     { "name" => "bundler" }
    #   ]
    # }
  },
  "postgresql" => {
    "password" => {
      "postgres" => "md53175bce1d3201d16594cebf9d7eb3f9d"
    },
    "pg_hba" => [
      { "type" => "local", "db" => "all", "user" => "postgres", "addr" => nil, "method" => "md5" }
    ]
  }
)
run_list(
  'recipe[apt]',
  'recipe[git]',
  'recipe[ruby_build]',
  'recipe[rbenv::system]',
  'recipe[postgresql::server]'
)