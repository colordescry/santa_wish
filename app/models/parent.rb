class Parent < ApplicationRecord
  has_many :child
  validates :user, presence: true, length: { maximum: 40 }
  validates :password, presence: true
end
