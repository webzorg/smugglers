source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails'
gem 'bootstrap-sass', '~> 3.3.6'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'
#gem 'asset_sync'
#gem 'fog', require: "fog/aws/storage"
gem 'sitemap_generator', '~> 5.1'
gem 'metamagic'
gem 'ransack'
gem 'kaminari'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem "paperclip", git: "git://github.com/thoughtbot/paperclip.git"
#gem 'aws-sdk', '< 2.0'
group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
	gem 'capistrano'
	gem 'capistrano-bundler'
	gem 'capistrano-passenger', '>= 0.1.1'

	gem 'capistrano-rails'
	gem 'capistrano-rvm'


	gem 'dotenv'
	gem 'puma'
  	# Access an IRB console on exception pages or by using <%= console %> in views
  	gem 'web-console', '~> 2.0'

  	# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  	gem 'spring'
end
