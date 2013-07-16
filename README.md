Ruby Chef box
=============

This project is a base configuration to run a Ruby project both in development with Vagrant and in production.

It uses Chef to provision the server.

Pre-requisites
--------------

Install Vagrant: http://docs.vagrantup.com/v2/installation/
Install Virtual Box: https://www.virtualbox.org/wiki/Downloads

```shell
gem install berkshelf
```

Usage
-----

```shell
git clone https://github.com/lakim/ruby-chef-box.git my_project
cd my_project
rm -rf .git
berks install --path chef/cookbooks
vagrant up
vagrant ssh
```

On the VM:
```shell
sudo su deploy
cd /vagrant
gem install rails
rails new .
```

Postgresql
----------
Default user/password: `postgres/postgres`

To generate a password:
```shell
echo -n 'my_password''postgres' | openssl md5 | sed 's/^.* //' | sed 's/^/md5/'
```

Test postgresql connection:
```shell
psql --username=postgres --password --host=localhost
``

TODO
----
* Fix rbenv PATH for deploy user
* Use UNIX socket for postgres instead of TCP connection
* Do not configure gems doc by default
