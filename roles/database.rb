name 'database'
description 'Database role'
default_attributes(
  "postgresql" => {
    "password" => {
      "postgres" => "md53175bce1d3201d16594cebf9d7eb3f9d"
    },
    "pg_hba" => [
      { "type" => "local", "db" => "all", "user" => "postgres", "addr" => nil, "method" => "md5" }
    ]
  },
  "mysql" => {
    "server_debian_password" => "root",
    "server_root_password" => "root",
    "server_repl_password" => "root",
    "bind_address" => "127.0.0.1"
  }
)
run_list(
  # 'recipe[postgresql::server]'
  'recipe[mysql::server]',
  'recipe[database::mysql]'
)