[![GitHub release](https://img.shields.io/github/release/takkii/nyasocom_beta.svg?style=flat)](GitHub)[![GitHub Status](https://img.shields.io/github/last-commit/takkii/nyasocom_beta.svg?style=flat)](GitHub)

<div align="center"><img src="https://github.com/takkii/nyasocom_beta/blob/master/public/images/hozuki.png" alt="hozuki" title="logo"></div>

# nyasocom_beta, project name.

### web Library System name is '鬼灯'

*Things you may want to cover:*

```markdown

* Ruby version 2.7.1

* System dependencies UNIX and Windows or WSL.

   ※ Need mysql and mroonga.

* Configuration Rails 6.0.x

* Database creation mysql

* How to run the test suite rspec and cucumber

* Deployment instructions heroku or sakura vps or local server

```

### devise

```markdown
[ .bashrc or .zshrc ]

export NYASOCOM_BETA_DATABASE_PASSWORD="" # database password
export PATH="$NYASOCOM_BETA_DATABASE_PASSWORD:$PATH"

[ Googleアカウントを登録 ]

config/environments/development.rb

[ config/environments/development.rb、67-68行目 認証時Googleアカウント指定 ]

:username => Settings.gmail[:user_name],
:password => Settings.gmail[:password],

[ 設定 ]
settings.local.yml (Gemfile, gem 'config')

[ config/database.yml ]
password: <%= Settings.database.password %>

[ 設定 ]
settings.yml (Gemfile, gem 'config')

[ 環境構築 ]
rails g config:install 
```

### settings.local.ymlの記述例

```yml
gmail:
  user_name: 'Gmail address'
  password: 'Gmail password'
```

### settings.ymlの記述例

```yml
database:
  password: 'mysql password'
```

### Googleアカウントセキュリティ管理

```markdown
[ セキュリティを下げておく→認証後、設定を戻す ]

https://www.google.com/settings/security/lesssecureapps

sign up → Gmail and Gmailパスワード登録
→ Gmailに本登録メールが届く → 認証
```

### Admin User Settings

```markdown
$ rails c
user = User.find(1) # Userからid番号指定 
user.update_attribute(:admin, "true") # 指定した番号のUserをadmin登録
```

### 管理者のみ管理画面へ変移

*config/initializers/rails_admin.rb*

```markdown
## == CancanCan ==
config.authorize_with :cancancan
```

### mroonga 環境構築
*※ MacOSは自作gistを参考、またはmroongaをhomebrewでインストールします* 

[mroonga(mac)](https://gist.github.com/takkii/5b6110b6643e28593842102c39fba0e5)

*※ WindowsはmariaDBで既存mroongaが用意されています*

[mroonga(windows)](https://github.com/mroonga/mroonga/releases)

*※ Linuxカーネルは、公式にドキュメントがあります*

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

rails s          # local server Start up

Ctrl + C         # Stop
```

### 鬼灯のレイアウト

![鬼灯レイアウト](https://github.com/takkii/nyasocom_beta/blob/master/public/images/hozuki_mt10.png)
