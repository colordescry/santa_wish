class Child < ApplicationRecord
  has_many :wishlist
  belongs_to :parent
  validates :user, presence: true, length: { maximum: 40 }
  validates :password, presence: true
end
