source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.3'
gem 'rails', '~> 7.0.6'

gem 'bootsnap', require: false
gem 'cssbundling-rails'
gem 'haml-rails'
gem 'jbuilder'
gem 'jsbundling-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'haml_lint'
end

group :development do
  gem 'rubocop', require: false # 追加
  gem 'rubocop-performance', require: false # 追加
  gem 'rubocop-rails', require: false # 追加
  gem 'rubocop-rspec' # 追加
  gem 'web-console'
end

group :test do
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end
