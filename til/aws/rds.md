# RDS について

## RDS とは

EC2 に RDBS をインストールがされてあって AWS がマネージしてくれるサービス

- スナップショット(バックアップ)を自動で取得
- スナップショットからインスタンスをリストア可能
- CloudWatch で監視可能
- アプリケーションのメンテナンスなどを AWS がしてくれる
- マルチリージョンの構築が容易
- リードレプリカという読み取り専用のレプリケーション（複製されたもの）を作成して負荷の軽減が可能

## RDS の構築準備

1. プライベートサブネットの作成 →RDS を設置するサブネットの作成
2. セキュリティーグループの作成 →RDS のアクセス設定
3. サブネットグループの作成 → マルチ AZ で使用するサブネットをまとめるやつ？
4. パラメータグループの作成 →DB の設定値を設定できるやつ
5. オプショングループの作成 →DB の機能的な部分を設定する(プラグインを使いたい場合など)

## RDS の構築

TODO