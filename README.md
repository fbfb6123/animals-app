# README

# ツール・ライブラリの名前
 
G.A.Reward
- G(Goal).A(Achievement).Reward
## 簡単な説明
 
自分で報酬を設定したうえで、達成に向けて頑張ったことや他人から褒められたことなどを投稿していくモチベーション向上を目的としたアプリ。

 
## 機能
 
- 報酬に紐付けられた頑張ったことをDBに保存
- 頑張ったことをより可視化するためにグラフを連携して表示。
- 
- ...
 
 
## 開発環境
 
- Ruby 2.5.1
- Rails 5.0.7
- mysql 5.6.47
 
## 使い方
 
1. 
- <img width="1432" alt="46f3d5293098d66131c27717dd625d15" src="https://user-images.githubusercontent.com/60612010/77843769-52d9bf80-71db-11ea-8f4f-e8259207e52a.png">

2. 
3. 
 
 
## その他
 




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
- belongs_to :reward

