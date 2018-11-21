class Wishlist < ApplicationRecord
  belongs_to :child
  belongs_to :product
end
