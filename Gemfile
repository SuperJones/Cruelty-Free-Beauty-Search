source 'https://rubygems.org'

# =============================================================================
# Each gem is labeled with one of the following:
#   Critical - App functionality, tests or other supported functionality will fail if removed.
#   Expected - Not essentail for core functionality or tests, but expected to be used.
#              You may have to do a little cleanup to fully disconnect the gem.
#   Optional - Can be removed if you're the developer and don't use the capability.
#             You may have to do a little cleanup to fully disconnect the gem.
# =============================================================================

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'pg', '~> 0.18' # (Critical) Use postgresql as the database for Active Record
gem 'puma', '~> 3.7' # (Critical) Use Puma as the app server
gem 'rails', '~> 5.1.4' # (Critical) Loads the Ruby on Rails framework
gem 'sass-rails', '~> 5.0' # (Critical) Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0' # (Critical) Use Uglifier as compressor for JavaScript assets
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'jbuilder', '~> 2.5' # Build JSON APIs with ease Read more: https://github.com/rails/jbuilder
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'factory_bot_rails', '~> 4.8.2' # (Critcal) Generates factories for tests.
  gem 'pry-byebug' # (Optional) Enhance pry with byebug (which gives more debugger commands)
  gem 'pry-rails' # (Optional) Replace pry with irb for "rails c" and make pry available for debugging the app.
  gem 'rspec-rails', '~> 3.7.2' # (Critcal) Configures Rails to use rspec
end

group :development do
  gem 'bullet' # (Expected) Used for detecting N+1 issues.
  gem 'listen', '>= 3.0.5', '< 3.2' # (Expected) listens to file modifications and notifies you about the changes.
  gem 'rubocop', '~> 0.54.0', require: false
  gem 'spring', require: false # (Optional) Adds the Spring preloader to speed up devlopment/testing
  gem 'spring-watcher-listen', '~> 2.0.0' #(Expected) makes Spring watch the filesystem for changes using Listen rather than by polling the filesystem.
  gem 'web-console', '>= 3.3.0' # (Optional) Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
end

group :test do
  gem 'capybara', '~> 2.13' # (Critical) Acceptance testing framework that simulates user interactions in a web browser
  gem 'capybara-screenshot', '~> 1.0.18' # (Expected) Take a picture of the browser when capybara has an error
  gem 'capybara-webkit', '~> 1.15.0' # (Critical) A Capybara driver for headless Webkit to test JavaScript web apps
  gem 'database_cleaner', '~> 1.6.2' # (Critical) Ensures a clean state for testing
  gem 'faker' # (Critical) Used by tests to generate random content
  gem 'shoulda-matchers', '~> 3.1.2' # (Critical) Adds extra matchers for tests
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
