# Ansible Provisioning-Code
* ロール別の実行項目
  * 'pre_process'
    * yumのアップデート
    * パッケージ群のインストール
  * 'install_ruby'
    * rbenvのインストール
    * rubyのインストール
  * 'install_yarn'
    * Node.jsのインストール
    * Yarnのインストール
  * 'deploy_rails-app'
    * Railsアプリをリモートリポジトリからクローン
    * Railsのインストール
    * Bundlerのインストール
    * Railsアプリに必要なgemのインストール
    * yarnのアップデート
    * webpackerのインストール
  * 'setup_nginx'
    * Unicornの設定ファイルの作成
    * NGINXのインストール
    * NGINXの設定ファイルの作成
    * Unicornの起動
    * NGINXの起動
* 実行結果
```{#lst:id sh caption="実行結果"}
> % ansible-playbook -i inventory playbook.yml

PLAY [ec2] ************************************************************************************************

TASK [Gathering Facts] ************************************************************************************
[WARNING]: Platform linux on host 13.113.166.148 is using the discovered Python interpreter at
/usr/bin/python3.7, but future installation of another Python interpreter could change the meaning of that
path. See https://docs.ansible.com/ansible-core/2.12/reference_appendices/interpreter_discovery.html for
more information.
ok: [13.113.166.148]
[WARNING]: Platform linux on host 54.178.24.185 is using the discovered Python interpreter at
/usr/bin/python3.7, but future installation of another Python interpreter could change the meaning of that
path. See https://docs.ansible.com/ansible-core/2.12/reference_appendices/interpreter_discovery.html for
more information.
ok: [54.178.24.185]

TASK [pre_process : Update 'yum'] *************************************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

TASK [pre_process : Install packages] *********************************************************************
ok: [54.178.24.185] => (item=git)
ok: [13.113.166.148] => (item=git)
ok: [54.178.24.185] => (item=gcc)
ok: [13.113.166.148] => (item=gcc)
ok: [54.178.24.185] => (item=gcc-c++)
ok: [13.113.166.148] => (item=gcc-c++)
ok: [54.178.24.185] => (item=patch)
ok: [13.113.166.148] => (item=patch)
ok: [54.178.24.185] => (item=rpm-build)
ok: [13.113.166.148] => (item=rpm-build)
ok: [54.178.24.185] => (item=mariadb)
ok: [13.113.166.148] => (item=mariadb)
ok: [54.178.24.185] => (item=mariadb-devel)
ok: [13.113.166.148] => (item=mariadb-devel)
ok: [54.178.24.185] => (item=gdbm-devel)
ok: [13.113.166.148] => (item=gdbm-devel)
ok: [54.178.24.185] => (item=zlib-devel)
ok: [13.113.166.148] => (item=zlib-devel)
ok: [54.178.24.185] => (item=openssl-devel)
ok: [13.113.166.148] => (item=openssl-devel)
ok: [54.178.24.185] => (item=ImageMagick-devel)
ok: [13.113.166.148] => (item=ImageMagick-devel)
ok: [54.178.24.185] => (item=readline-devel)
ok: [13.113.166.148] => (item=readline-devel)
ok: [54.178.24.185] => (item=libcurl-devel)
ok: [13.113.166.148] => (item=libcurl-devel)
ok: [54.178.24.185] => (item=libffi-devel)
ok: [13.113.166.148] => (item=libffi-devel)
ok: [54.178.24.185] => (item=libicu-devel)
ok: [13.113.166.148] => (item=libicu-devel)
ok: [54.178.24.185] => (item=libxml2-devel)
ok: [13.113.166.148] => (item=libxml2-devel)
ok: [54.178.24.185] => (item=libxslt-devel)
ok: [13.113.166.148] => (item=libxslt-devel)
ok: [54.178.24.185] => (item=libyaml-devel)
ok: [13.113.166.148] => (item=libyaml-devel)

TASK [install_ruby : Check 'rbenv' installed] *************************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

TASK [install_ruby : Install 'rbenv'] *********************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_ruby : Install 'ruby-build'] ****************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_ruby : Run 'install.sh' to install ruby] ****************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_ruby : Add rbenv-PATH to '.bash_profile'] ***************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_ruby : Check 'ruby' installed] **************************************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [install_ruby : Install 'ruby'] **********************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_ruby : Check global 'ruby'] *****************************************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [install_ruby : Set global 'ruby'] *******************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_yarn : Check 'node.js' exists] **************************************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [install_yarn : Add 'node.js' repository] ************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_yarn : Install 'node.js'] *******************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [install_yarn : Install 'Yarn' node.js package globally] *********************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [deploy_rails-app : Check app directory exists] ******************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

TASK [deploy_rails-app : Make 'rails-app' directory] ******************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [deploy_rails-app : Clone 'rails-app' from remote-repository] ****************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [deploy_rails-app : Install 'rails'] *****************************************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [deploy_rails-app : Install 'bundler'] ***************************************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [deploy_rails-app : Install gems for 'rails-app'] ****************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [deploy_rails-app : Update yarn] *********************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [deploy_rails-app : Install 'webpacker'] *************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [setup_nginx : Put 'unicorn.rb' file for setting 'unicorn'] ******************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [setup_nginx : Put 'unicorn.rake' file for switching 'unicorn' process] ******************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [setup_nginx : Enable to install 'nginx'] ************************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

TASK [setup_nginx : Install 'nginx'] **********************************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

TASK [setup_nginx : Put 'rails.conf' file for setting'nginx'] *********************************************
ok: [54.178.24.185]
ok: [13.113.166.148]

TASK [setup_nginx : Check 'unicorn' running] **************************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

TASK [setup_nginx : Start Unicorn] ************************************************************************
skipping: [13.113.166.148]
skipping: [54.178.24.185]

TASK [setup_nginx : Start 'nginx'] ************************************************************************
ok: [13.113.166.148]
ok: [54.178.24.185]

PLAY RECAP ************************************************************************************************
13.113.166.148             : ok=18   changed=0    unreachable=0    failed=0    skipped=14   rescued=0    ignored=0
54.178.24.185              : ok=18   changed=0    unreachable=0    failed=0    skipped=14   rescued=0    ignored=0
```