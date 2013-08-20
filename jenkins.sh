#!/bin/sh
bundle install
rake db:drop RAILS_ENV=test
rake db:create RAILS_ENV=test
rake db:test:prepare RAILS_ENV=test
