class Parent < ApplicationRecord
  has_many :child
  validates :user, presence: true, length: { maximum: 40 }
  validates :password, presence: true
  # For one form with multiple models
  accepts_nested_attributes_for :child
end
