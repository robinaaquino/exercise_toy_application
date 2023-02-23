source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails'
gem 'aws-sdk-s3', require: false
gem 'image_processing'
gem 'mini_magick'
gem 'active_storage_validations'
gem 'bcrypt'
gem 'faker'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'bootstrap-sass'
gem 'puma'
gem 'sass-rails'
gem 'webpacker', '~>5.0'
gem 'turbolinks'
gem 'jbuilder'
gem 'bootsnap', require: false
gem 'cloudinary'

group :development, :test do
gem 'sqlite3'
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
gem 'web-console'
gem 'listen'
gem 'spring'
gem 'spring-watcher-listen'
end

group :test do
gem 'capybara'
gem 'selenium-webdriver'
gem 'webdrivers'
gem 'rails-controller-testing'
gem 'minitest'
gem 'minitest-reporters'
gem 'guard'
gem 'guard-minitest'
end

group :production do
gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "importmap-rails", "~> 1.1"