name 'ruby'
description 'Ruby with rbenv role'
default_attributes(
  "rbenv" => {
    "user_installs" => [
      {
        "user" => "deploy",
        "rubies" => [ "1.9.3-p448" ],
        "global" => "1.9.3-p448"
        # "gems" => {
        #   "1.9.3-p448" => [
        #     { "name" => "bundler" }
        #   ]
        # }
      }
    ]
  }
)
run_list(
  'recipe[ruby_build]',
  'recipe[rbenv::user]'
)