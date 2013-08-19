name 'pg'
description 'Postgresql role'
default_attributes(
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
  'recipe[postgresql::server]'
)