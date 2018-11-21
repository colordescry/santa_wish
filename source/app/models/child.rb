class Child < ApplicationRecord
  has_many :wishlist
  belongs_to :parent
end
