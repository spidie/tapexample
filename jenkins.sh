#!/bin/sh
bundle install
bundle exec rake db:drop RAILS_ENV=test
bundle exec rake db:create RAILS_ENV=test
bundle exec rake db:test:prepare RAILS_ENV=test
bundle exec rspec -f RSpec::TapY spec/*.rb
