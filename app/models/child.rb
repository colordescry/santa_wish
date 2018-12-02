class Child < ApplicationRecord
  belongs_to :parent
  validates :name, presence: true, length: { minimum: 2, maximum: 40 }
  has_many :wishlists
end
