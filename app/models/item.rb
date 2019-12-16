class Item < ApplicationRecord
  has_many :images

  validates :price, numericality: { only_integer: true, greater_than: 300, less_than: 9999999}
end
