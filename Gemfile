source 'https://rubygems.org'
ruby '2.5.1'

gem 'rails'
gem 'puma'

group :development, :test do
  gem 'sqlite3'
  gem 'rb-readline', '0.5.3' # 0.5.4 breaks Pry history lookup
  gem 'pry-rails'
  gem 'rspec-rails'
end

group :development do
  gem 'guard-rspec', require: false
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
