# CircleCI　Pipeline
* CircleCIによる実行項目 （".circleci/config.yml"参照）
  * 実行確認
    * 'Say hello'の実行
    * 'pwd','ls'の実行
  * cfn-lintによるCloudFormationテンプレートのチェック
    * cfn-lintのインストール
    * cfn-lintを実行
  * CloudFormationテンプレートからのスタック作成・変更
    * AWS CLIで"cloudformation deploy"を実行（orbsを利用）
  * Ansibleによる環境構築
    * SSHキーの登録
    * Ansibleのインストール
    * 初回SSH接続時の確認をスキップする設定（"~/.ansible.cfg"に記載）
    * Ansibleの実行
  * Serverspecによるテスト
    * Serverspecのインストール
    * Serverspecの実行
* ワークフロー図
	![ワークフロー図](circleci_workflow.png)