# Billing の設定

記事作成日：2020/4/25

## 料金アラートの設定

AWS の利用料金が設定金額を超えたら通知することで使い過ぎを防ぐ

### 1. 通知設定をひらく

右上のメニュー > マイ請求ダッシュボード > 設定 > Billing の設定 を開く

![image](https://user-images.githubusercontent.com/10251347/80268671-46fef180-86e4-11ea-80f1-611ad7a9c046.png)

![image](https://user-images.githubusercontent.com/10251347/80268685-6d249180-86e4-11ea-9a91-dc15df4b79b3.png)

### 2. 請求設定

`電子メールで PDF 版請求書を受け取る` にチェックをする

![image](https://user-images.githubusercontent.com/10251347/80268842-a01b5500-86e5-11ea-8e8e-3041d77f0416.png)

### 3. コスト管理設定

- `無料利用枠の使用のアラートの受信` にチェックを入れる
  ![image](https://user-images.githubusercontent.com/10251347/80268856-bc1ef680-86e5-11ea-9e8f-c54c852d64c7.png)
- `請求アラートを受け取る` にチェックを入れる
  ![image](https://user-images.githubusercontent.com/10251347/80268864-d658d480-86e5-11ea-83eb-0e13b248507a.png)

### 4. 設定の保存

`設定の保存` ボタンを押下

### 5. CloudWatch の設定

1. `請求アラートを受け取る` の説明に `請求アラートを管理する` というリンクがあるので開く

   ![image](https://user-images.githubusercontent.com/10251347/80268864-d658d480-86e5-11ea-83eb-0e13b248507a.png)

2. メニューから`請求`を開く

   ![image](https://user-images.githubusercontent.com/10251347/80268923-5c751b00-86e6-11ea-96c3-b858ef20d52a.png)

3. `アラートの作成`ボタンを押下
4. 条件を設定

   ![image](https://user-images.githubusercontent.com/10251347/80269043-57fd3200-86e7-11ea-873b-77e87173d77e.png)

5. 通知の設定(新しい SNS トピックを作成)

   ![image](https://user-images.githubusercontent.com/10251347/80269145-0b662680-86e8-11ea-8585-7971541a949a.png)

6. 名前と説明もテキトーに設定
7. 設定が終わると通知の設定で登録したメアドに確認メールが飛ぶのでその中の`Confirm subscription`を開いて確認する
