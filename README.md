# README

# ツール・ライブラリの名前
 
G.A.Reward
- G(Goal).A(Achievement).Reward
## 簡単な説明
 
自分で報酬を設定したうえで、達成に向けて頑張ったことや他人から褒められたことなどを投稿していくモチベーション向上を目的としたアプリ。

 
## 機能
 
- 報酬に紐付けられた頑張ったことをDBに保存
- 頑張ったことをより可視化するためにグラフを連携して表示。
 
 
## 開発環境
 
- Ruby 2.5.1
- Rails 5.0.7
- mysql 5.6.47
 
## 使い方
 
1. 自身で設定した報酬に対して、左下の入力フォームから頑張ったことを投稿。
- 投稿した内容が入力フォームの上段に表示される。
<img width="1431" alt="c42ecaeb66a8012d43cb019e6ca1dab3" src="https://user-images.githubusercontent.com/60612010/77875324-aeaf5180-728a-11ea-9935-68c36298740c.png">

2. マイページからこれまで設定した報酬一覧を表示して、報酬をクリックすると報酬に紐ついた頑張った事が表示されます。
![46015a5011d5c2683f130afa73fbddbe](https://user-images.githubusercontent.com/60612010/77873968-6db53e00-7286-11ea-8dfa-8c1cd325bb7a.jpg)


## movere DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :rewards
- has_many :comments

## rewardsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|
|user_id|integer|null: false, foreign_key: true|
|reward_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :rewar

