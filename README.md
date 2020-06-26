[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)[![GitHub release](https://img.shields.io/github/release/takkii/nyasocom_beta.svg?style=flat)](GitHub)[![GitHub Status](https://img.shields.io/github/last-commit/takkii/nyasocom_beta.svg?style=flat)](GitHub)

<div align="center"><img src="https://github.com/takkii/nyasocom_beta/blob/master/public/images/hozuki.png" alt="hozuki" title="logo"></div>

## Project Name, nyasocom_beta.

*nyasocomの試作品として作り始めました...*

※ プロジェクトはMITライセンスですが、利用するときは個人情報の取り扱いに注意してください。

### Web Library System Name is '鬼灯'

```markdown
* Ruby version 2.7.1

   ※ Need mysql and mroonga.

* Configuration Rails 6.0.x
```

### ログインするためには

```markdown
> .bashrc or etc shell. 
export NYASOCOM_BETA_DATABASE_PASSWORD="database password"

> Googleアカウントを登録

> config/environments/development.rb

> 67-68行目 認証時Googleアカウント指定
:username => Settings.gmail[:user_name],
:password => Settings.gmail[:password],

> config/database.yml
password: <%= Settings.database.password %>

> 環境構築
rails g config:install

> config/ (環境構築ができないとき自前で作成)
settings.yml
settings.local.yml
```

### settings.local.ymlの記述例

```yml
gmail:
  user_name: 'Gmail_address'
  password: 'Gmail_password'
```

### settings.ymlの記述例

```yml
database:
  password: 'mysql_password'
```

### Googleセキュリティ管理

```markdown
> セキュリティを下げておく→認証後、設定を戻す
https://www.google.com/settings/security/lesssecureapps

sign up → Gmail and Gmailパスワード登録
→ Gmailに本登録メールが届く → 認証
```

### 管理者権限付与

```markdown
$ rails c
user = User.find(1) # 管理者対象をUser(id番号指定)
user.update_attribute(:admin, "true") # 指定した番号のUserを登録
```

### 管理者のみ管理画面設定 (11~12行目)

> config/initializers/rails_admin.rb

```markdown
## == CancanCan ==
config.authorize_with :cancancan
```

### DB操作

```markdown
> python3.jpgをカラムに追加したと仮定

$ rails c
$ Book.where("picture < ?", "python3.jpg").delete_all
※ python3.jpg以外、カラムがすべて消えます
```

### mroonga環境構築
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

![鬼灯レイアウト](https://github.com/takkii/nyasocom_beta/blob/master/public/images/hozuki_mt13.png)
