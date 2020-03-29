# README

# ツール・ライブラリの名前
 
G.A.Reward
- G(Goal).A(Achievement).Reward
## 簡単な説明
 
このアプリはモチベーション向上を目的としたアプリとなっております。
　
- 報酬を設定したうえで、達成に向けて頑張ったことや他人から褒められたことなどを投稿していき、目標値に満たされた際に設定した報酬をあなた自身に与えてください。
　
- 投稿内容については具体的でなくとも構いません。下記に例を記載していますので、もし分からないと言う方はご確認ください。
　
- ＜例＞仕事　（上司にお客様の対応を褒められた, 　いつもより生産性が高かったなど）
　
- ＜例＞勉強　（今日は８時間勉強をした,　朝いつもより早く起床して勉強に励んだなど）
　
- ＜例＞身体について　（ダイエットのために減食,　今日は3kmランニングをしたなど）
　
- これまでの報酬、頑張ったことはマイページからリストとして後から見返すことが可能です。 
 
## 機能
 
- 機能1（UI/計算 etc ...）
- 機能2
- 機能3
- ...
 
 
## 開発環境
 
- Ruby 2.5.1
- Rails 5.0.7.2
- mysql 5.6.47
 
## 使い方
 
1. 
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

z