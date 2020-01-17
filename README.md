# nyasocom_act2

### web system name is '鬼灯'

*Things you may want to cover:*

```markdown

* Ruby version 2.6.5

* System dependencies UNIX

   ※ need mysql mroonga.

* Configuration Rails 5.2.x

* Database creation mysql

* How to run the test suite rspec and cucumber

* Deployment instructions heroku or sakura vps or local server

```

### Gemfile

```markdown

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby
gem 'honoka-rails', '>= 3.3.6.3'
gem 'bootstrap-sass'
gem 'jquery-rails'
gem 'autoprefixer-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'font-awesome-rails'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

gem 'carrierwave'
gem 'rmagick'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

gem 'rails-i18n', '~> 5.1'
# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'
gem 'web-app-theme'
gem 'nokogiri'
gem 'devise'

gem 'wdm', '>= 0.1.0'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  gem 'rspec'
  gem 'rspec-rails'
end

group :test do
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
  gem 'cucumber-rails'
  gem 'cucumber'
  gem 'database_cleaner'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:x64_mingw]

```

### devise

```markdown

[ windows/mroonga/mariadb  ]

https://github.com/mroonga/mroonga/releases

[ .bash_profile ]

export NYASOCOM_BETA_DATABASE_PASSWORD="" # database password
export PATH="$NYASOCOM_BETA_DATABASE_PASSWORD:$PATH"

[ Googleアカウントを登録 ]

config/environments/development.rb

[ 67,68行目 認証時Googleアカウント指定 ]
:user_name => "", #gmailアドレス
:password => "", #gmailパスワード

[ セキュリティを下げておく→認証後、設定を戻す ]

https://www.google.com/settings/security/lesssecureapps

sign up → Gmail and Gmailパスワード登録
→ Gmailに本登録メールが届く → 認証

```

### Starting 鬼灯

```markdown

git clone https://github.com/takkii/nyasocom_beta.git

cd nyasocom_beta

rm -rf Gemfile.lock

bundle install

rake db:create

rake db:migrate

rake db:seed

rails s

Ctrl + C # Stop

```