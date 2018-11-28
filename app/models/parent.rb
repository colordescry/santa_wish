class Parent < ApplicationRecord
  has_many :child
  validates :name, presence: true, length: { maximum: 40 }
  validates :password, presence: true
end
