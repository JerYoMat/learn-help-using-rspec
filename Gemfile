source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'

gem 'puma', '~> 3.11'
gem 'bcrypt', '~> 3.1.7'
gem 'jwt'
gem 'active_model_serializers'
gem 'faker'
gem 'dotenv-rails'


group :development, :test do
  gem 'rspec-rails'
  gem 'pry-rails'
  gem 'sqlite3'
end

group :test do
  gem 'factory_bot_rails'
  gem 'shoulda-matchers'
  gem 'faker'
  gem 'database_cleaner'
  gem 'coveralls', require: false 
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


group :production do
  gem 'pg'
end 

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
