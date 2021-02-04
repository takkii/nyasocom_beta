[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)[![GitHub release](https://img.shields.io/github/release/takkii/nyasocom_beta.svg?style=flat)](GitHub)[![GitHub Status](https://img.shields.io/github/last-commit/takkii/nyasocom_beta.svg?style=flat)](GitHub)

<div align="center"><img src="https://github.com/takkii/nyasocom_beta/blob/main/public/images/hozuki.png" alt="hozuki" title="logo"></div>

## Project Name, nyasocom2.

nyasocom2 is My Library System.

### Web Library System Name is '鬼灯'

```markdown
- Ruby version 3.0.0

  ※ Need MySQL and Mroonga.

- Configuration Rails 6.1.1
```

### ログインするためには

```markdown
> .bashrc or etc shell.
export NYASOCOM_BETA_DATABASE_PASSWORD="database password"

> Google アカウントを登録

config/environments/development.rb

> 67-68 行目 認証時 Google アカウント指定
:username => Settings.gmail[:user_name],
:password => Settings.gmail[:password],

> config/database.yml
password: <%= Settings.database.password %>

> 環境構築 (自動)
rails g config:install

> 環境構築 (手動)
> cp settings.sample.yml config/settings.yml

gmail:
  user_name: "Your_Gmail_Address"
  password: "Your_Gmail_Password"

> cp settings.sample.local.yml config/settings.local.yml

database:
  password: "Your_Local_MySQL_Password"
```

### Google セキュリティ管理

```markdown
> セキュリティを下げておく → 認証後、設定を戻す
> https://www.google.com/settings/security/lesssecureapps

sign up → Gmail and Gmail パスワード登録
→ Gmail に本登録メールが届く → 認証
```

### Gmail でメールが受信できなかった場合

```markdown
rails server 実行コンソール内

<p>Welcome karuma.reason@gmail.com!</p>
<p>You can confirm your account email through the link below:</p>
<p><a href="　(URL and TOKEN)　"> (URL and TOKENをブラウザに貼り付けで本人確認できる) Confirm my account</a></p>
```

### 管理者権限付与

```markdown
rails c

user = User.find(1) # 管理者対象を User(id 番号指定)
user.update_attribute(:admin, "true") # 指定した番号の User を登録
```

### 管理者のみ管理画面設定 (11~12 行目)

> config/initializers/rails_admin.rb

```markdown
## == CancanCan ==

config.authorize_with :cancancan
```

### macports (対処: mysql57)

```markdown
Mysql2::Error::ConnectionError: Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)

sudo ln -s /opt/local/var/run/mysql57/mysqld.sock /tmp/mysql.sock
```

### 新レイアウト適用

```markdown
npm install -g yarn
yarn add jquery
yarn add bootswatch@4.5.2
```

### mroonga 環境構築

_※ MacOS は自作 gist を参考、または mroonga を homebrew でインストールします_

[mroonga(mac)](https://gist.github.com/takkii/5b6110b6643e28593842102c39fba0e5)

_※ Windows は mariaDB で既存 mroonga が用意されています_

[mroonga(windows)](https://github.com/mroonga/mroonga/releases)

_※ Linux カーネルは、公式にドキュメントがあります_

[mroonga(Linuxkernel)](https://mroonga.org/ja/docs/install.html)

### 鬼灯 ( 環境構築 )

```markdown
git clone https://github.com/takkii/nyasocom_beta.git

cd nyasocom_beta
rm -rf Gemfile.lock
bundle install

rake db:create
rake db:migrate
rake db:seed

rails webpacker:install

rails s # local server Start up
Ctrl + C # Stop
```

### 鬼灯のレイアウト

![鬼灯レイアウト(傘挙動 青→白)](https://github.com/takkii/nyasocom_beta/blob/main/public/images/hozuki.gif)
