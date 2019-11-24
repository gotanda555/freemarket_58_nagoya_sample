# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

# DB設計
## usersテーブル_ok
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

### Association(後ほど)
- belongs_to :identification
- belongs_to :credit_card
- has_many :products



- has_many :groups_users,  through:  :groups_users
- has_many :groups


## identificationsテーブル_ok
|Column|Type|Options|
|------|----|-------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_ruby|string|null: false|
|first_name_ruby|string|null: false|
|year|integer|null: false|
|month|integer|null: false|
|day|integer|null: false|
|postal_code|integer|null: false|
|prefectures|string|null: false|
|city|string|null: false|
|house_number|string|null: false|
|building|string||
|tel|integer||
|user_id|integer|null: false, foreign_key: true|

### Association_ok
- belongs_to :users


## creditcardsテーブル_ok
|Column|Type|Options|
|------|----|-------|
|number|integer|null: false|
|month|integer|null: false|
|year|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association_ok
- belongs_to :users


## evaluationsテーブル_ok
|Column|Type|Options|
|------|----|-------|
|good|integer|null: false|
|normal|integer|null: false|
|bad|integer|null: false|
|user_id|integer|null: false, foreign_key: true|

### Association_ok
- belongs_to :users


## profilesテーブル_ok
|Column|Type|Options|
|------|----|-------|
|body|text||
|user_id|integer|null: false, foreign_key: true|

### Association_ok
- belongs_to :users




## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|status|integer|null: false|
|image_id|integer||


|exhibitor_id|integer|null: false, foreign_key: true|
|customer_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|status|integer|null: false|
|image|integer||


|exhibitor_id|integer|null: false, foreign_key: true|
|customer_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :users




## messagesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|image|text||

|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|groupname|text|null: false|

### Association
- has_many :groups_users,  through:  :groups_users
- has_many :user
- has_many :messages

# groups_usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user


