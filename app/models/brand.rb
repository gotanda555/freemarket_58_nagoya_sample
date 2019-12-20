class Brand < ApplicationRecord
<<<<<<< Updated upstream
  belongs_to :item
=======
  has_many :items
>>>>>>> Stashed changes
end