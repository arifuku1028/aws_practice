# CircleCI　Pipeline
* 概要  
  CircleCIにより、AWS上におけるサーバー・WEBアプリの構築からテストまでを自動実行するもの

* CircleCIによる実行項目 （[.circleci/config.yml](./.circleci/config.yml)参照）
  * 実行確認
    * 'Say hello'の実行
    * 'pwd','ls'の実行
  * cfn-lintによるCloudFormationテンプレートのチェック
    * cfn-lintのインストール
    * cfn-lintを実行
  * [CloudFormationテンプレート](./cloud_formation)からのスタック作成・変更
    * AWS CLIで"cloudformation deploy"を実行（orbsを利用）
  * Ansibleによる環境構築
    * SSHキーの登録
    * Ansibleのインストール
    * 初回SSH接続時の確認をスキップする設定（"~/.ansible.cfg"に記載）
    * [Ansibleの実行](./ansible)
  * Serverspecによるサーバーテスト
    * Serverspecのインストール
    * [Serverspecの実行](./server_spec)
* ワークフロー図（実行結果）
	![ワークフロー図](circleci_workflow.png)
