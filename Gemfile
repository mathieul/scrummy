source 'https://rubygems.org'

ruby '2.2.2'

gem 'volt', '0.9.1.pre5'
# gem 'volt', github: 'voltrb/volt', branch: 'master'

gem 'volt-semantic_ui', github: 'mathieul/volt-semantic_ui', branch: 'master'

# User templates for login, signup, and logout menu.
gem 'volt-user_templates', '~> 0.2.1'

group :development, :test do
  # Testing dependencies
  gem 'rspec', '~> 3.2.0'
  gem 'opal-rspec', '~> 0.4.2'
  gem 'capybara', '~> 2.4.2'
  gem 'selenium-webdriver', '~> 2.45'
  gem 'chromedriver2-helper', '~> 0.0.8'
  gem 'poltergeist', '~> 1.6.0'
end

# Server for MRI
platform :mri do
  gem 'thin', '~> 1.6.0'
  gem 'bson_ext', '~> 1.9.0'
end
