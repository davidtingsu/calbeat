source 'https://rubygems.org'
ruby '2.0.0'
#ruby-gemset=railstutorial_rails_4_0

gem 'rails', '4.0.3'
gem "bootstrap-sass", "~> 3.0.3.0"
gem 'faker', '1.1.2' #generate fake names
gem 'will_paginate', '3.0.4' #paginate gems
gem 'bootstrap-will_paginate', '0.0.9'
gem 'annotate', '>=2.6.0' #provides attribute annotation on model files
gem 'sprockets', '2.11.0' # allows for loading js files
# automate jobs
gem 'whenever', :require => false
# formats things nicely on rails console
gem 'hirb'
gem 'twilio-ruby'
# for user authentication
gem 'devise'
# for Facebook auth
gem 'omniauth-facebook'
# for environmental variables
gem "figaro"
gem 'paranoia', '~> 2.0'
gem 'acts_as_commentable'
gem 'impressionist'
gem 'friendly_id'

group :development, :test do
  gem 'sqlite3', '1.3.8'
  # This includes rspec-rails in a development environment so that we have
  # access to RSpec-specific generators, and it includes it in test mode in order to
  # run the tests.
  gem 'rspec-rails', '2.13.1'
  # advanced setup gems to speed up testing with spork server and guard
  gem 'guard-rspec', '2.5.0'
  gem 'spork-rails', '4.0.0'
  gem 'guard-spork', '1.5.0'
  gem 'childprocess', '0.3.6'
end

group :test do
  # capybara dependecy
  gem 'selenium-webdriver', '2.35.1'
  # allows us to simulate a user’s interaction with the
  # sample application using a natural English-like syntax
  gem 'capybara', '2.1.0'
  # helps us create objects
  gem 'factory_girl_rails', '4.2.1'
  # optional: let's us test using cucumber syntax (more like English)
  gem 'cucumber-rails', '1.4.0', :require => false
  # cucumber dependecy
  gem 'database_cleaner', github: 'bmabey/database_cleaner'
end

# Use SCSS for stylesheets
gem 'sass-rails', '4.0.1'
# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.0.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'
gem 'jquery-rails', '3.0.4'
# allows you to use jquery-ui library??
gem 'jquery-ui-rails'
# Turbolinks makes following links in your web application faster. Instead of
# letting the browser recompile the JavaScript and CSS between each page change,
# it keeps the current page instance alive and replaces only the body
# and the title in the head
gem 'turbolinks', '1.1.1'
# for json stuff
gem 'jbuilder', '1.0.2'

group :doc do
  gem 'sdoc', '0.3.20', require: false
end

group :production do
  # configue PostgreSQL for Heroku during deployment
  gem 'pg', '0.15.1'
  # Used by Heroku to serve static assets such as images and stylesheets.
  gem 'rails_12factor', '0.0.2'
end
