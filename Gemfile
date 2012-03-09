source 'http://rubygems.org'

gem 'rails', '3.0.11'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger (ruby-debug for Ruby 1.8.7+, ruby-debug19 for Ruby 1.9.2+)
# gem 'ruby-debug'
# gem 'ruby-debug19', :require => 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'nokogiri'
# gem 'sqlite3-ruby', :require => 'sqlite3'
# gem 'aws-s3', :require => 'aws/s3'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
# group :development, :test do
#   gem 'webrat'
# end

# REFINERY CMS ================================================================
# Anything you put in here will be overridden when the app gets updated.

gem 'refinerycms',              '~> 1.0.9'

gem 'sass'
gem 'haml', '>=3.0.6'
gem 'twitter'

group :development, :test do
  # To use refinerycms-testing, uncomment it (if it's commented out) and run 'bundle install'
  # Then, run 'rails generate refinerycms_testing' which will copy its support files.
  # Finally, run 'rake' to run the tests.
  gem 'refinerycms-testing',    '~> 1.0.9'
  gem 'capybara'

  if RbConfig::CONFIG['target_os'] =~ /darwin/i
    gem 'growl'
  end

  gem 'spork', '~> 0.9.0.rc', :platforms => :ruby
  gem 'guard-spork', :platforms => :ruby
  gem 'guard-rspec', :platforms => :ruby
  gem 'generator_spec'
	gem 'sqlite3'
end

group :production do
	gem 'pg'
end

# END REFINERY CMS ============================================================

# USER DEFINED


# Specify additional Refinery CMS Engines here (all optional):
gem 'refinerycms-inquiries',    '~> 1.0'
gem "refinerycms-news",         '~> 1.2'
# gem 'refinerycms-blog',         '~> 1.6'
# gem 'refinerycms-page-images',  '~> 1.0'

# Add i18n support (optional, you can remove this if you really want to).
gem 'refinerycms-i18n',         '~> 1.0.0'

# Additional plugins for NLA
# gem 'refinerycms-portfolio', '~>0.9.9'
gem 'refinerycms-copywriting'
gem 'refinerycms-search', '~> 1.0.0', :git => 'git://github.com/resolve/refinerycms-search.git'

# END USER DEFINED
