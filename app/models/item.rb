class Item < ApplicationRecord
  belongs_to :category
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
  has_many :images
  accepts_nested_attributes_for :images
  validates :price, numericality: { only_integer: true, greater_than: 300, less_than: 9999999}
  validates :name, presence: true
  validates :status, presence: true
  validates :body, presence: true
  validates :cateogry_id, presence: true
  validates :condition, presence: true
  validates :burden, presence: true
  validates :region, presence: true
  validates :sending_days, presence: true


  def self.search(search)
    return Item.all unless search
    Item.where(['name LIKE ?', "%#{search}%"])
  end

  enum condition:{
    新品、未使用: 1, 
    未使用に近い: 2, 
    目立った傷や汚れなし: 3, 
    やや傷や汚れあり: 4, 
    傷や汚れあり: 5, 
    全体的に状態が悪い: 6
  }

  enum burden:{
    "---":0,
    送料込み（出品者負担）:1,
    着払い（購入者負担）:2
  }


end
