#!/bin/sh
set -e

bundle config build.nokogiri --use-system-libraries
bundle --deployment --path /bundle --without development test
bundle exec rake assets:precompile db:migrate --trace && \
  bundle exec puma -C config/puma.rb
