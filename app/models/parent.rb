class Parent < ApplicationRecord
  before_save { self.name = self.name.downcase }
  has_many :child
  validates :name, presence: true, length: { minimum: 8, maximum: 40 },
                   uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 8, maximum: 40 }

  has_secure_password
end
