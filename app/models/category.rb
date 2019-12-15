class Category < ApplicationRecord
  belongs_to :item
  #多階層の記述
  has_ancestry
end
