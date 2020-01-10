#!/bin/bash

cd test-fetch
bundle install

ruby redis_test.rb
