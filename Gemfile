source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Specify your gem's dependencies in administrate_tailwind_theme.gemspec.
gemspec

gem 'irb', '~> 1.9.1'
gem 'puma'
gem 'sprockets-rails'
gem 'sqlite3'

group :development do
  gem 'rubocop', '~> 1.21'
  gem 'rubocop-rake', '~> 0.6.0'
  gem 'rubycritic', '~> 4.9.0'
end

group :test do
  gem 'administrate'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :test, :development do
  gem 'byebug'
end
