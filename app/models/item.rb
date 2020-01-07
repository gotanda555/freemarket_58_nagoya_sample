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

end
