# ChatSpace Info
## URL
http://3.114.120.52/

## テストアカウント
- mail: test2@test.com
- pass: aaaaaaaa


# ChatSpace DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false, unique: true|
|password|string|null: false|
|name|string|null: false|
### Association
- has_many :messages
- has_many :users_groups
- has_many :groups, through: :users_groups

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|group_name|text|null: false|
|user_id|integer|foreign_key: true|
### Association
- has_many :messages
- has_many :users_groups
- has_many :users, through: :users_groups

## groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :group
- belongs_to :user

## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|string||
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :group


## URL
http://3.114.120.52/

## テストアカウント
- mail: test2@test.com
- pass: aaaaaaaa
