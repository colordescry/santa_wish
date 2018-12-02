class Wishlist < ApplicationRecord
  belongs_to :child
  validates :name, presence: true, length: { minimum: 3, maximum: 50 }
  
  # initialize default value
  after_initialize :init
  def init
    self.buy = false if self.buy.nil?
  end
end
