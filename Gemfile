source 'https://rubygems.org'

ruby '1.9.3'

gem 'rails', '3.2.6'
gem 'jquery-rails'
gem 'bcrypt-ruby', '3.0.1'
gem 'cancan', '~> 1.6.8'
gem 'turbolinks'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'twitter-bootstrap-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'webrick', '~> 1.3.1'
end

group :development, :test do
  gem 'sqlite3'
  gem 'rspec-rails'
  gem 'guard-rspec'
  gem 'guard-spork'
  gem 'spork'
  gem 'shoulda-matchers'
end

group :test do
  gem 'capybara'
  gem 'growl'
  gem 'rb-fsevent', '~> 0.9.1', :require => false
  gem 'factory_girl_rails', '~> 4.1.0'
  gem 'rake', '~> 0.9.2.2'
end

group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
