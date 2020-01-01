class Item < ApplicationRecord
  belongs_to :category
  belongs_to :saler, class_name: "User"
  belongs_to :buyer, class_name: "User", optional: true
  has_many :images
  accepts_nested_attributes_for :images
  validates :price, numericality: { only_integer: true, greater_than: 300, less_than: 9999999}
end
