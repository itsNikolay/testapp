#!/bin/bash
set -e

bundle --deployment --path /bundle
bin/rake assets:precompile --trace
bin/rake db:migrate
bundle exec puma -C config/puma.rb
