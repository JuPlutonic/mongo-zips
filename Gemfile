# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) {|repo| "https://github.com/#{repo}.git" }

# Full-stack web application framework. (http://www.rubyonrails.org)
gem 'rails', '~> 5.2.3'
## Added gem
# Elegant Persistence in Ruby for MongoDB. (http://mongoid.org)
gem 'mongoid', '~> 6.2.1'
## Added gem
# Rack HTTP server for fast clients and Unix (http://unicorn.bogomips.org/)
gem 'unicorn'

## Added gem
# an asset gemification of the font-awesome icon font library (https://github.com/bokmann/font-awesome-rails)
gem 'font-awesome-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
## Added gem
# Use jQuery with Rails 3 (http://rubygems.org/gems/jquery-rails)
gem 'jquery-rails'
## Added gem
# Integrate SassC-Ruby into Rails. (https://github.com/sass/sassc-rails)
gem 'sassc-rails'
## Added gem
# Semantic UI, converted to Sass and ready to drop into Rails, Compass, or Sprockets. (http://github.com/doabit/semantic-ui-sass)
gem 'semantic-ui-sass'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
## Added gem
# Pagination plugin for web frameworks and other apps (https://github.com/mislav/will_paginate/wiki)
gem 'will_paginate', '~> 3.1.6'
## Added gem
# Integrates the Semantic UI pagination component with will_paginate (https://github.com/rafaelbiriba/will_paginate_semantic_ui)
gem 'will_paginate_semantic_ui'
## Added gem
# An extension that becomes possible use paginate method with Mongoid
gem 'will_paginate_mongoid'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Reduces boot times through caching; required in config/boot.rb
# gem 'bootsnap', '>= 1.1.0', require: false
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'

group :development, :test do
  # Ruby 2.0 fast debugger - base + CLI (http://github.com/deivid-rodriguez/byebug)
  gem 'byebug', platforms: :mri
  # Rspec-2.11.0 (http://github.com/rspec)
  gem 'rspec'
  # Provides "its" method formerly part of rspec-core (https://github.com/rspec/rspec-its)
  gem 'rspec-its'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # gem 'spring', github: 'mizalewski/spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'selenium-webdriver'
  # Easy download and use of browser drivers. (https://github.com/titusfortner/webdrivers)
  gem 'webdrivers'
end

# Timezone Data for TZInfo (http://tzinfo.github.io)
# gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
