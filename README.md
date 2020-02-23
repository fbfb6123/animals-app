# README
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