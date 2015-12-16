source 'https://rubygems.org'
ruby "2.2.2"

gem 'bootstrap-sass', '~> 3.3.4'
gem 'rails', '4.2.1'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem "paperclip", "~> 4.2"
gem "paperclip-dropbox", ">= 1.1.7"
gem "figaro"
gem 'will_paginate', '~> 3.0.6'
gem 'newrelic_rpm'
gem 'devise'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end
  

group :production do
	 gem 'pg'
	gem	'rails_12factor'
end 
# Use sqlite3 as the database for Active Record
group	:development, :test do
	gem 'sqlite3'
end 
  group :doc do 

  	gem 'sdoc', require: false

end 


# Notes for devise - delete this once working 

#Some setup you must do manually if you haven't yet:

  #1. Ensure you have defined default url options in your environments files. Here
   #  is an example of default_url_options appropriate for a development environment
   #  in config/environments/development.rb:

   #    config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }

   #  In production, :host should be set to the actual host of your application.

  #2. Ensure you have defined root_url to *something* in your config/routes.rb.
   #  For example:

   #    root to: "home#index"

  #3. Ensure you have flash messages in app/views/layouts/application.html.erb.
  #   For example:

   #    <p class="notice"><%= notice %></p>
   #    <p class="alert"><%= alert %></p>

  #4. If you are deploying on Heroku with Rails 3.2 only, you may want to set:

    #   config.assets.initialize_on_precompile = false

   #  On config/application.rb forcing your application to not access the DB
    # or load models when precompiling your assets.

  #5. You can copy Devise views (for customization) to your app by running:

      # rails g devise:views