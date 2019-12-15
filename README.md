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
## usersテーブル_五反田さん担当
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
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

### Association_五反田さん担当
- has_many :items
- has_many :comments
- belongs_to :evaluation
- belongs_to :profile


## brandsテーブル
|Column|Type|Options|
|------|----|-------|
|brandname|string|null: false|

### Association
- belongs_to :item


## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text|null: false|
|user_id|integer|foreign_key: true|

### Association_ok
- belongs_to :user


## categoriesテーブル
|Column|Type|Options|
|------|----|-------|
|path|integer|null: false|
|name|string|null: false|

### Association
- belongs_to :item


## evaluationsテーブル
|Column|Type|Options|
|------|----|-------|
|good|integer|null: false|
|normal|integer|null: false|
|bad|integer|null: false|
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user


## profilesテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|user_id|integer|foreign_key: true|

### Association
- belongs_to :user


## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|status|integer|null: false|
|body|text||
|category_id|integer|foreign_key: true|
|size|string||
|brand_id|integer|foreign_key: true|
|condition|string|null: false|
|burden|string|null: false|
|region|string|null: false|
|sending_days|string|null: false|
|price|integer|null: false|
|saler|integer|null: false|
|buyer|integer||

### Association
- belongs_to :category
- belongs_to :brand
- belongs_to :user
- has_many :images


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|text||
|item_id|integer|foreign_key: true|

### Association
- belongs_to :item