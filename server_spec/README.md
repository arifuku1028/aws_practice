# Serverspec Test-Code
* ロール別のテスト項目
	* 'base'
		* 22番(SSH)、80番(HTTP)のポート解放を確認
		* ELB経由でのWEBアプリへのアクセスを確認
	* 'app'
		* ユーザーデータでインストールしたパッケージ群がインストールされているか確認
		* Node.jsのインストール・バージョンを確認
		* Railsアプリのデプロイ先のディレクトリを確認
	* 'web'
		* NGINXのインストール・起動を確認
		* NGINXの設定ファイルが作成されているか確認

* 実行結果
```{#lst:id sh caption="実行結果"}
-> % rake spec
/System/Library/Frameworks/Ruby.framework/Versions/2.6/usr/bin/ruby -I/Library/Ruby/Gems/2.6.0/gems/rspec-support-3.11.0/lib:/Library/Ruby/Gems/2.6.0/gems/rspec-core-3.11.0/lib /Library/Ruby/Gems/2.6.0/gems/rspec-core-3.11.0/exe/rspec --pattern spec/\{base,app,web\}/\*_spec.rb
:paranoid is deprecated, please use :verify_host_key. Supported values are exactly the same, only the name of the option has changed.
verify_host_key: false is deprecated, use :never

Package "git"
  is expected to be installed

Package "gcc"
  is expected to be installed

Package "gcc-c++"
  is expected to be installed

Package "patch"
  is expected to be installed

Package "rpm-build"
  is expected to be installed

Package "mariadb"
  is expected to be installed

Package "mariadb-devel"
  is expected to be installed

Package "gdbm-devel"
  is expected to be installed

Package "zlib-devel"
  is expected to be installed

Package "openssl-devel"
  is expected to be installed

Package "ImageMagick-devel"
  is expected to be installed

Package "readline-devel"
  is expected to be installed

Package "libcurl-devel"
  is expected to be installed

Package "libffi-devel"
  is expected to be installed

Package "libicu-devel"
  is expected to be installed

Package "libxml2-devel"
  is expected to be installed

Package "libxslt-devel"
  is expected to be installed

Package "libyaml-devel"
  is expected to be installed

Package "nodejs"
  is expected to be installed
  is expected to be installed with version "16"

File "/srv/rails-app"
  is expected to be directory
  is expected to be owned by "ec2-user"
  is expected to be grouped into "ec2-user"
  is expected to be mode 755

Port "80"
  is expected to be listening

Port "22"
  is expected to be listening

Command "curl practice-elb-789070725.ap-northeast-1.elb.amazonaws.com -o /dev/null -w "%{http_code}\n" -s"
  stdout
    is expected to match /^200$/

Package "nginx"
  is expected to be installed

Service "nginx"
  is expected to be enabled
  is expected to be running

File "/etc/nginx/conf.d/rails.conf"
  is expected to exist

Finished in 10.91 seconds (files took 4.47 seconds to load)
31 examples, 0 failures
```