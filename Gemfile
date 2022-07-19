source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.0"

gem "rails", "~> 7.0.2", ">= 7.0.2.2"

gem "activeadmin"
gem "bootsnap", require: false
gem "bootstrap", "~> 5.1.3"
gem "devise"
gem "factory_bot_rails"
gem "faker"
gem "importmap-rails"
gem "jbuilder"
gem "pg"
gem "pry"
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem "rubocop-performance"
gem "rubocop-rails"
gem "rubocop-rspec"
gem "rubocop"
gem "sprockets-rails"
gem "standard"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem "debug", platforms: %i[mri mingw x64_mingw]
  gem "rspec-rails"
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "webdrivers"
end
