#!/bin/bash
set -e

bundle --deployment --path /bundle
bundle exec rake assets:precompile db:migrate --trace &&
bundle exec puma -C config/puma.rb
