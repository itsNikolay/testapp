#!/bin/sh
set -e

bundle config build.nokogiri --use-system-libraries
bundle --deployment --path /bundle --without development test
bundle exec rake db:migrate && \
  bundle exec sidekiq
